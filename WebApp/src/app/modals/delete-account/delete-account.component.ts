import { Component, OnInit } from '@angular/core';
import { AccountService } from 'src/app/core/services/account.service';
import { BsModalRef } from 'ngx-bootstrap';
import { Router } from '@angular/router';

@Component({
  selector: 'app-delete-account',
  templateUrl: './delete-account.component.html',
  styleUrls: ['./delete-account.component.scss']
})
export class DeleteAccountComponent implements OnInit {

  constructor(private bsModalRef: BsModalRef,
    private accountService: AccountService,
    private router: Router) { }

    idDelete: any;
    id: any;

  ngOnInit() {
    setTimeout(() => {
      this.id = this.idDelete;
    });
  }
  onClickCancel() {
    this.closeModal();
  }
  private closeModal() {
    this.bsModalRef.hide();
  }

  onClickDelete() {
    this.accountService.deleteAccount(this.idDelete).subscribe(result => {
      alert(result);
      this.closeModal();
      location.reload();
    })
  }

}
