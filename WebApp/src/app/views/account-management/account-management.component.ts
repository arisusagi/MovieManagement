import { Component, OnInit } from '@angular/core';
import { AccountService } from 'src/app/core/services/account.service';
import { BsModalRef, BsModalService } from 'ngx-bootstrap';
import { AddAccountComponent } from 'src/app/modals/add-account/add-account.component';
import { EditAccountComponent } from 'src/app/modals/edit-account/edit-account.component';
import { DeleteAccountComponent } from 'src/app/modals/delete-account/delete-account.component';

@Component({
  selector: 'app-account-management',
  templateUrl: './account-management.component.html',
  styleUrls: ['./account-management.component.scss']
})
export class AccountManagementComponent implements OnInit {

  constructor(private accountService: AccountService,private modalService: BsModalService) { }

  listAccount:any;
  listAccountCurrent :any;
  modalRef:BsModalRef;
  listSearchAccount:any;
  searchData:any;

  listName:any;

  ngOnInit() {
    this.accountService.getListAccount ().subscribe(result => {
      this.listAccount = result;
      this.listAccountCurrent =this.listAccount;
      
    });
  }

  onClickAdd() {
    this.showAddDetail();
  }

  private showAddDetail() {
    this.modalRef = this.modalService.show(AddAccountComponent, {
      ignoreBackdropClick: true
    });
  }

  onClickEdit(i:any) {
    
    this.showEditDetail(i);
  }

  private showEditDetail(i:any) {
    this.modalRef = this.modalService.show(EditAccountComponent, {
      ignoreBackdropClick: true
    });
    
    this.modalRef.content.account = this.listAccount[i];
    console.log(this.modalRef.content.listFilmOnline);
    this.listName = this.listAccount.map(x=>x.userName);
      console.log(this.listName);
      this.modalRef.content.listName=this.listName;
      console.log(this.modalRef.content.listName);
  }

  onClickDetele(i:any){
    this.modalRef=this.modalService.show(DeleteAccountComponent,{
      ignoreBackdropClick:true
    });
    this.modalRef.content.idDelete =this.listAccount[i].id;
    console.log(this.modalRef.content.idDelete);
    
  }

  onClickSearch(){
    this.listSearchAccount = this.listAccount.filter(x=>x.userName.toLowerCase().includes(this.searchData.toLowerCase()));
    console.log(this.listSearchAccount);
    this.listAccountCurrent=this.listSearchAccount;
  }
}
