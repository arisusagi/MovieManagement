import { Component, OnInit, EventEmitter } from '@angular/core';
import { BsModalRef } from 'ngx-bootstrap';
import { Account } from 'src/app/core/model/account/account.model';
import { Router } from '@angular/router';
import { FilmOnlineService } from 'src/app/core/services/film-online.service';


@Component({
  selector: 'app-login-modal',
  templateUrl: './login.modal.component.html',
  styleUrls: ['./login.modal.component.scss']
})
export class LoginModalComponent implements OnInit {

  public event: EventEmitter<any> = new EventEmitter();

  account: Account = new Account();

  currentAccount: any;

  user: any;
  username: string;
  currentType: any = "type";
  currentUsername: any = "userName";
  password: string;
  
  checkStaff:boolean;
  checkType: boolean;

  constructor(private bsModalRef: BsModalRef,
    private accountService: FilmOnlineService,
    private router: Router) { }

  ngOnInit() {
    var sesUser = sessionStorage.getItem('userName');
    var sesType = sessionStorage.getItem('type');
    if (parseInt(sesType) == 1) {
      this.checkType = true;
    }
    if (parseInt(sesType) == 2) {
      this.checkStaff = true;
    }
    console.log(sesUser);

  }

  onClickForgotten() {
    this.event.emit(1);
    this.bsModalRef.hide();
  }

  onClickLogIn() {
    this.account.username = this.username;
    this.account.password = this.password;
    this.accountService.login(this.account).subscribe(result => {
      if (result == null) {
        alert("FAIL!!")
      }
      else {
        alert("SUCCESS!!");
        this.router.navigateByUrl("/film-online");
        this.closeModal();
        this.currentAccount = result;

        sessionStorage.setItem(this.currentUsername, this.currentAccount.userName);
        sessionStorage.setItem(this.currentType, this.currentAccount.type);

      }
    location.reload();
    })

  }

  onClickLogOut() {
    sessionStorage.clear();
    this.closeModal();
    this.router.navigateByUrl("/film-online")
  }

  onClickCancel() {
    this.closeModal();
  }

  private closeModal() {
    this.bsModalRef.hide();
  }

}
