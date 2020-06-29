import { NgModule } from '@angular/core';
import { MenuService } from './menu.service';
import { SharedService } from './shared.service';
import { MovieService } from './movie.service';
import { ShowSeatService } from './show-seat.service';
import { PaymentService } from './payment.service';
import { MovieSharedService } from './movie-shared.service';
import { FilmOnlineService } from './film-online.service';
import { SeatSharedService } from './seat-shared.service';
import { SearchMovieSharedService } from './search-movie-shared.service';
import { ShowMovieSharedService } from './show-movie-shared.service';
import { PaymentSharedService } from './payment-shared.service';

import { FilmOnlineShareService } from './film-online-shared.service';
import { AccountService } from './account.service';
@NgModule({
  declarations: [
  ],
  providers: [
    MenuService,
    SharedService,
    MovieService,
    FilmOnlineService,
    SeatSharedService,
    ShowSeatService,
    PaymentService,
    MovieSharedService,
    SearchMovieSharedService,
    ShowMovieSharedService,
    PaymentSharedService,
    FilmOnlineShareService,,
    AccountService
  ]
})
export class ServiceModule { }
