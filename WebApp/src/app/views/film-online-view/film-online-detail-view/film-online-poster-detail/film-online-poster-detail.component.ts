import { Component, OnInit, Input } from '@angular/core';
import { DomSanitizer } from '@angular/platform-browser';
import { FilmOnlineService } from 'src/app/core/services/film-online.service';
import { FilmPosterDetailModel } from 'src/app/core/model/film-model/film-poster-detail.model';
import { FilmOnlineDetail } from 'src/app/core/model/film-model/film-online-detail.model';

@Component({
  selector: 'app-film-online-poster-detail',
  templateUrl: './film-online-poster-detail.component.html',
  styleUrls: ['./film-online-poster-detail.component.scss']
})
export class FilmOnlinePosterDetailComponent implements OnInit {

  @Input() filmId: any;

  data: FilmOnlineDetail = new FilmOnlineDetail();

  constructor(private _domSanitizer: DomSanitizer,
    private filmOnlineService: FilmOnlineService) { }

  ngOnInit() {
    console.log(this.filmId);
    this.filmOnlineService.getFilmDetail(this.filmId).subscribe(result => {
      if (result) {
        this.data = result;
      }
    });
  }
  
}
