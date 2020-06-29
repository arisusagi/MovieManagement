import { Injectable } from '@angular/core';
import { HttpClient, HttpParams } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Account } from '../model/account/account.model';

@Injectable()
export class AccountService {

  homeAddress = 'api/Account';
  apiHost = "http://localhost:59239";
  constructor(public httpClient: HttpClient) {
  }
  getListAccount():Observable<any>{
    return this.httpClient.get(`${this.apiHost}/${this.homeAddress}/GetListAccount`);
  }

  addAccount(data:Account):Observable<any>{
    return this.httpClient.post(`${this.apiHost}/${this.homeAddress}/AddAccount`,data)
  }

  updateAccount(data:Account):Observable<any>{
    return this.httpClient.post(`${this.apiHost}/${this.homeAddress}/UpdateAccount`,data)
  }

  deleteAccount(idDelete:number):Observable<any>{
    return this.httpClient.delete(`${this.apiHost}/${this.homeAddress}/DeleteAccount/${idDelete}`)
  }
 
}
