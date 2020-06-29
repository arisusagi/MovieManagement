import { Component, OnInit } from '@angular/core';
import { BsModalRef } from 'ngx-bootstrap';
import { FilmOnlineService } from 'src/app/core/services/film-online.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-delete',
  templateUrl: './delete.component.html',
  styleUrls: ['./delete.component.scss']
})
export class DeleteComponent implements OnInit {

  constructor(private bsModalRef: BsModalRef,
    private filmOnlineService: FilmOnlineService,
    private router: Router) { }

    idDelete: any;
    id: any;

  ngOnInit() {
    setTimeout(() => {
      this.id = this.idDelete;
    });
  }
  onClickCancel() {
    this.closeModal();
  }
  private closeModal() {
    this.bsModalRef.hide();
  }

  onClickDelete() {
    this.filmOnlineService.deleteFilmOnline(this.idDelete).subscribe(result => {
      alert(result);
      this.router.navigateByUrl("/admin");
      this.closeModal();
      location.reload();
    })
  }
}
