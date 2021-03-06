import { Component, OnInit } from '@angular/core';
import { DropDownItemModel } from 'src/app/core/model/drop-down-item.model';
import { MenuService } from 'src/app/core/services/menu.service';
import { BsModalRef, BsModalService } from 'ngx-bootstrap';
import { LoginModalComponent } from 'src/app/modals/login/login.modal.component';
import { ForgottenModalComponent } from 'src/app/modals/forgotten/forgotten.modal.component';
import { Router } from '@angular/router';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss']
})
export class HeaderComponent implements OnInit {

  searchText: string;
  listMenus: [];
  modalRef: BsModalRef;
  username: string;
  password: string;
  checkType: boolean;
  currentType: string;
  checkStaff:boolean;
  type:any;

  constructor(private menuService: MenuService,
    private modalService: BsModalService,
    private router:Router) { }

  ngOnInit() {
    var currentType= sessionStorage.getItem('type')
    console.log(currentType);
    if(parseInt(currentType)==1)
    {
      this.checkType = true;
    }
    if(parseInt(currentType)==2)
    {
      this.checkStaff=true;
    }
    this.menuService.GetAll().subscribe(result => {
      this.listMenus = result;
    });
  }

  onSearch() {

  }

  onClickLogin() {
    this.modalRef = this.modalService.show(LoginModalComponent, {
      ignoreBackdropClick: true
    });
    this.modalRef.content.username = this.username;
    this.modalRef.content.password = this.password;
    this.modalRef.content.event.subscribe(result => {
      if(result === 1)
      {
        this.modalRef = this.modalService.show(ForgottenModalComponent, {
          ignoreBackdropClick: true
        });
      }
    })
  }

  onClickPhimOnline(){
    this.router.navigateByUrl("/film-online");
  }

  onClickOrder(){
    this.router.navigateByUrl("/offline");
  }

  onClickAdmin(){
    this.router.navigateByUrl("/admin");
  }

  onClickAccount(){
    this.router.navigateByUrl("/account");
  }
}