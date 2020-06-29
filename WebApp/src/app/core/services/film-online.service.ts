import { Injectable } from '@angular/core';
import { HttpClient, HttpParams } from '@angular/common/http';
import { Observable } from 'rxjs';
import { FilmPosterDetailModel } from '../model/film-model/film-poster-detail.model';
import { FilmOnlineDetail } from '../model/film-model/film-online-detail.model';

@Injectable()
export class FilmOnlineService {

  homeAddress = 'api/Film';
  apiHost = "http://localhost:59239";
  constructor(public httpClient: HttpClient) {
  }

  getListFilmsCarousel(): Observable<any> {
    return this.httpClient.get(`${this.apiHost}/${this.homeAddress}/GetListFilmsCarousel`);
  }

  getListFilmsNomination(): Observable<any> {
    return this.httpClient.get(`${this.apiHost}/${this.homeAddress}/GetListFilmsNomination`);
  }

  getLoadMoreFilmNomination(numberFilmNominationCurrent: any, numberFilmNominationTake: any): Observable<any> {
    let queryParams = new HttpParams().set('numberFilmNominationCurrent', numberFilmNominationCurrent)
                                      .set("numberFilmNominationTake", numberFilmNominationTake);
    return this.httpClient.get(`${this.apiHost}/${this.homeAddress}/GetLoadMoreFilmNomination`, { params: queryParams });
  }

  getFilmDetail(filmId: number) {
    return this.httpClient.get<FilmOnlineDetail>(`${this.apiHost}/${this.homeAddress}/GetFilmDetail/${filmId}`);
  }

  getListFilmDetails(filmId : any, numberOfFilms: any): Observable<any> {
    let queryParams = new HttpParams().set('filmId', filmId)
                                      .set("numberOfFilms", numberOfFilms);
    return this.httpClient.get(`${this.apiHost}/${this.homeAddress}/GetListFilmDetails`, { params: queryParams });
  }

  getAllListFilm():Observable<any>{
    return this.httpClient.get(`${this.apiHost}/${this.homeAddress}/GetAllListFilm`);
  }

  updateFilmOnline(data:FilmOnlineDetail):Observable<any>{
    return this.httpClient.post(`${this.apiHost}/${this.homeAddress}/UpdateFilmOnline`,data)
  }

  addFilmOnline(data:FilmOnlineDetail):Observable<any>{
    return this.httpClient.post(`${this.apiHost}/${this.homeAddress}/AddFilmOnline`,data)
  }

  deleteFilmOnline(idDelete:number):Observable<any>{
    return this.httpClient.delete(`${this.apiHost}/${this.homeAddress}/DeleteFilmOnline/${idDelete}`)
  }

  login(data: any): Observable<any> {
    return this.httpClient.post(`${this.apiHost}/${this.homeAddress}/Login`, data)
}

}
