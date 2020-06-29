import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AccountService } from 'src/app/core/services/account.service';
import { BsModalRef } from 'ngx-bootstrap';

@Component({
  selector: 'app-edit-account',
  templateUrl: './edit-account.component.html',
  styleUrls: ['./edit-account.component.scss']
})
export class EditAccountComponent implements OnInit {

  constructor(private bsModalRef: BsModalRef,
    private accountService: AccountService,
    private router: Router) { }

    account: any;
    id: any;
    userName: any;
    password: any;
    
    type: any;
   

    ngOnInit() {
      setTimeout(() => {
        this.id = this.account.id;
        this.userName = this.account.userName;
        this.password = this.account.password;
        this.type = this.account.type;
        

      });
    }
    onClickCancel() {
      this.closeModal();
    }
    private closeModal() {
      this.bsModalRef.hide();
    }
  
    onClickEdit() {
      this.account.id = this.id;
      this.account.userName = this.userName;
      this.account.password = this.password;
     
      this.account.type = this.type;
     
      this.accountService.updateAccount(this.account).subscribe(result => {
        alert(result);
        
        this.closeModal();
        location.reload();
      })
    }

}
