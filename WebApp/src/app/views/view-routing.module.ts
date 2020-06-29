import { Routes, RouterModule } from "@angular/router";
import { NgModule } from "@angular/core";
import { PaymentViewComponent } from "./payment-view/payment-view.component";
import { OfflineMovieSearchViewComponent } from "./offline-movie-search-view/offline-movie-search-view.component";


const routes: Routes = [
    
];

@NgModule({
    imports: [
        RouterModule.forChild(routes)
    ],
    exports: [
        RouterModule
    ],
    providers: [
    ]
})

export class ViewRoutingModule { }