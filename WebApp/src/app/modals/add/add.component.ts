import { Component, OnInit } from '@angular/core';
import { BsModalRef } from 'ngx-bootstrap';
import { FilmOnlineService } from 'src/app/core/services/film-online.service';
import { Router } from '@angular/router';
import { FilmOnlineDetail } from 'src/app/core/model/film-model/film-online-detail.model';

@Component({
  selector: 'app-add',
  templateUrl: './add.component.html',
  styleUrls: ['./add.component.scss']
})
export class AddComponent implements OnInit {

  constructor(private bsModalRef: BsModalRef,
    private filmOnlineService: FilmOnlineService,
    private router:Router) { }

  filmOnline:FilmOnlineDetail = new FilmOnlineDetail();
  id: any;
  title: any;
  imgURL: any;
  duration: any;
  type: any;
  category: any;
  movieURL: any;
  releaseDate: any;
  description: any;
  ngOnInit() {
  }
  onClickCancel() {
    this.closeModal();
  }
  private closeModal() {
    this.bsModalRef.hide();
  }

  onClickAdd(){
    this.filmOnline.id="0";
    this.filmOnline.title = this.title;
    this.filmOnline.imgUrl = this.imgURL;
    this.filmOnline.duration = this.duration;
    this.filmOnline.type = this.type;
    this.filmOnline.category = this.category;
    this.filmOnline.movieUrl = this.movieURL;
    this.filmOnline.releaseDate = this.releaseDate;
    this.filmOnline.description = this.description;
    console.log(this.filmOnline);
    this.filmOnlineService.addFilmOnline(this.filmOnline).subscribe(result => {
      alert(result);
      location.reload();
      this.closeModal();
    })
  }

}
