import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { FilmOnlineService } from 'src/app/core/services/film-online.service';

@Component({
  selector: 'app-film-online-detail-view',
  templateUrl: './film-online-detail-view.component.html',
  styleUrls: ['./film-online-detail-view.component.scss']
})
export class FilmOnlineDetailViewComponent implements OnInit {

  filmId: any;
  data: any;
  listFilmDetails: any;
  currentFilmId: number;

  constructor(private activatedRoute: ActivatedRoute,
    private filmOnlineService: FilmOnlineService) { }

    
  ngOnInit() {
    
    this.activatedRoute.params.subscribe(x => {
      if (x) {
        this.filmId = parseInt(x.id.toString());
        this.getFilmDetail(this.filmId);
      }
    });
  }

  private getFilmDetail(filmId: number) {
    this.filmOnlineService.getListFilmDetails(filmId, 3).subscribe(result => {
      if (result) {
        this.listFilmDetails = result;
        // this.currentFilmId = this.listFilmDetails[0].id;
        
      }
    });
  }

  onChangeViewDetail(event: number) {
    this.currentFilmId = event;
    
  }

  changeStatus(filmId: number) {
    return filmId == this.currentFilmId;
    
  }
}
