import { Component, OnInit } from '@angular/core';
import { BsModalRef } from 'ngx-bootstrap';
import { FilmOnlineService } from 'src/app/core/services/film-online.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-edit',
  templateUrl: './edit.component.html',
  styleUrls: ['./edit.component.scss']
})
export class EditComponent implements OnInit {

  constructor(private bsModalRef: BsModalRef,
    private filmOnlineService: FilmOnlineService,
    private router: Router) { }

  filmOnline: any;
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
    setTimeout(() => {
      console.log(this.filmOnline);
      this.id = this.filmOnline.id;
      this.title = this.filmOnline.title;
      this.imgURL = this.filmOnline.imgUrl;
      this.duration = this.filmOnline.duration;
      this.type = this.filmOnline.type;
      this.category = this.filmOnline.category;
      this.movieURL = this.filmOnline.movieUrl;
      this.releaseDate = this.filmOnline.releaseDate;
      this.description = this.filmOnline.description;
    });
  }
  onClickCancel() {
    this.closeModal();
  }
  private closeModal() {
    this.bsModalRef.hide();
  }

  onClickEdit() {
    this.filmOnline.id = this.id;
    this.filmOnline.title = this.title;
    this.filmOnline.imgUrl = this.imgURL;
    this.filmOnline.duration = this.duration;
    this.filmOnline.type = this.type;
    this.filmOnline.category = this.category;
    this.filmOnline.movieUrl = this.movieURL;
    this.filmOnline.releaseDate = this.releaseDate;
    this.filmOnline.description = this.description;
    this.filmOnlineService.updateFilmOnline(this.filmOnline).subscribe(result => {
      alert(result);
      
      this.closeModal();
    })
  }
}
