import { Routes, RouterModule } from "@angular/router";
import { MainViewComponent } from "./views/main-view/main-view.component";
import { NgModule } from "@angular/core";
import { MovieManagementComponent } from "./views/movie-management/movie-management.component";
import { AccountManagementComponent } from "./views/account-management/account-management.component";

const appRoutes: Routes = [
    {
        path: '',
        component: MainViewComponent,
        children: [
            {
                path: 'news',
                loadChildren: './views/movie-news-view/movie-news-view.module#MovieNewsViewModule',
            },
            {
                path: 'payment',
                loadChildren: './views/payment-view/payment-view.module#PaymentViewModule',
            },
            {
                path: 'film-online',
                loadChildren: './views/film-online-view/film-online-view.module#FilmOnlineViewModule',
            },
            {
                path: 'offline',
                loadChildren: './views/offline-movie-search-view/offline-movie-search-view.module#OfflineMovieSearchViewModule',
            },

        ]
    },
    {
        path: 'admin',
        component: MovieManagementComponent,
    },
    {
        path:'account',
        component:AccountManagementComponent,
    }
];

@NgModule({
    imports: [
        RouterModule.forRoot(appRoutes, { useHash: true, scrollPositionRestoration: 'enabled' })

    ],
    providers: [
    ],
    exports: [
        RouterModule
    ]
})

export class AppRoutingModule { }