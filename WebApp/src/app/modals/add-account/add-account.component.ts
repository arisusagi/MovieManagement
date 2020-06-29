import { Component, OnInit } from '@angular/core';
import { Account } from 'src/app/core/model/account/account.model';
import { BsModalRef } from 'ngx-bootstrap';
import { AccountService } from 'src/app/core/services/account.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-add-account',
  templateUrl: './add-account.component.html',
  styleUrls: ['./add-account.component.scss']
})
export class AddAccountComponent implements OnInit {

  constructor(private bsModalRef:BsModalRef,
    private accountService:AccountService,
    private router:Router) { }

  account:Account = new Account();
  id: any;
  userName: any;
  password: any;
  
  type: any;
  
  ngOnInit() {
  }
  
  
  onClickCancel() {
    this.closeModal();
  }
  private closeModal() {
    this.bsModalRef.hide();
  }

  onClickAdd(){
    this.account.id="0";
    this.account.username = this.userName;
    this.account.password = this.password;
    this.account.type = this.type;
    
    console.log(this.account);
    this.accountService.addAccount(this.account).subscribe(result => {
      alert(result);
      location.reload();
      this.closeModal();
    })
  }

}
