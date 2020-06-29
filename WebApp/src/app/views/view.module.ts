import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { OfflineMovieSearchViewModule } from './offline-movie-search-view/offline-movie-search-view.module';
import { PaymentViewModule } from './payment-view/payment-view.module';
import { FilmOnlineViewModule } from './film-online-view/film-online-view.module';
import { ControlModule } from '../controls/control.module';
import { ShowSeatViewComponent } from './payment-view/show-seat-view/show-seat-view.component';
import { PaymentViewComponent } from './payment-view/payment-view.component';
import { LoginModalComponent } from '../modals/login/login.modal.component';
import { FormsModule } from '@angular/forms';
import { ForgottenModalComponent } from '../modals/forgotten/forgotten.modal.component';
import { ModalsModule } from '../modals/modals.module';
import { ViewRoutingModule } from './view-routing.module';
import { MovieManagementComponent } from './movie-management/movie-management.component';
import { AccountManagementComponent } from './account-management/account-management.component';

@NgModule({
  declarations: [AccountManagementComponent],
  imports: [
    ControlModule,
    OfflineMovieSearchViewModule,
    PaymentViewModule,
    FilmOnlineViewModule,
    FormsModule,
    ViewRoutingModule,
    CommonModule,
    MovieManagementComponent,
    AccountManagementComponent
  ],
  entryComponents: [
  ],
  exports: [
    OfflineMovieSearchViewModule,
    PaymentViewModule,
    FilmOnlineViewModule,
    ModalsModule,
    PaymentViewModule,
    FilmOnlineViewModule,
    MovieManagementComponent,
    AccountManagementComponent
  ]
})
export class ViewModule { }
