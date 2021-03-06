import { Component, OnInit } from '@angular/core';
import { SharedService } from '../../core/services/shared.service';
import { ItemShowingComponent } from 'src/app/common/components/item-showing/item-showing.component';
import { ItemShowingEnum } from 'src/app/core/enum/item-showing.enum';
import {Router} from '@angular/router';


@Component({
  selector: 'app-main-view',
  templateUrl: './main-view.component.html',
  styleUrls: ['./main-view.component.scss']
})
export class MainViewComponent implements OnInit {

  constructor(private router:Router) {
  }

  ngOnInit() {
    // this.router.navigateByUrl("/payment");
  }

}
