import { Component, OnInit } from '@angular/core';
import { FilmOnlineDetail } from 'src/app/core/model/film-model/film-online-detail.model';
import { BsModalRef, BsModalService } from 'ngx-bootstrap';
import { BillConfirmModalComponent } from '../payment-view/bill-confirm-modal/bill-confirm-modal.component';
import { EditComponent } from 'src/app/modals/edit/edit.component';
import { AddComponent } from 'src/app/modals/add/add.component';
import { FilmOnlineService } from 'src/app/core/services/film-online.service';
import { DeleteComponent } from 'src/app/modals/delete/delete.component';
import { forEach } from '@angular/router/src/utils/collection';

@Component({
  selector: 'app-movie-management',
  templateUrl: './movie-management.component.html',
  styleUrls: ['./movie-management.component.scss']
})
export class MovieManagementComponent implements OnInit {

  constructor(private modalService: BsModalService,private filmOnlineService: FilmOnlineService) { }

  modalRef: BsModalRef;

  idDelete:any;

  listFilmOnline: any;

  listFilmOnlineCurrent : any;

  listSearchFilmOnline:any;

  searchData:any;

  filmOnlineDetail: FilmOnlineDetail = new FilmOnlineDetail();

  ngOnInit() {

    this.filmOnlineService.getAllListFilm ().subscribe(result => {
      this.listFilmOnline = result;
      this.listFilmOnlineCurrent =this.listFilmOnline;
    });
    

    console.log(this.listFilmOnline);
    console.log(this.listFilmOnlineCurrent);
  }

  onClickAdd() {
    this.showAddDetail();
  }

  private showAddDetail() {
    this.modalRef = this.modalService.show(AddComponent, {
      ignoreBackdropClick: true
    });
  }

  onClickEdit(i:any) {
    
    this.showEditDetail(i);
  }

  private showEditDetail(i:any) {
    this.modalRef = this.modalService.show(EditComponent, {
      ignoreBackdropClick: true
    });
    
    this.modalRef.content.filmOnline = this.listFilmOnline[i];
    console.log(this.modalRef.content.listFilmOnline);
  }

  onClickDetele(i:any){
    this.modalRef=this.modalService.show(DeleteComponent,{
      ignoreBackdropClick:true
    });
    this.modalRef.content.idDelete =this.listFilmOnline[i].id;
    console.log(this.modalRef.content.idDelete);
    
  }

  onClickSearch(){
    this.listSearchFilmOnline = this.listFilmOnline.filter(x=>x.title.toLowerCase().includes(this.searchData.toLowerCase()));
    console.log(this.listSearchFilmOnline);
    this.listFilmOnlineCurrent=this.listSearchFilmOnline;
  }

}
