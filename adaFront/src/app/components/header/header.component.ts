import { Component, OnInit } from '@angular/core';
import { SharedService } from '../../services/shared.service';
import { User } from '../../model/user.model';
import { Profile } from 'src/app/model/profile';
import { Router } from '@angular/router';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {

  public share: SharedService;

  constructor(private router: Router) {

    this.share = SharedService.getInstance();
    this.share.user = new User('', '', '', new Array<Profile>());

   }

  ngOnInit() {
  }

  singOut(): void {
    this.share.token = null;
    this.share.user = null;
    window.location.href = '/';
  }

  getEmailProfile() {
    if ( this.share.user !== null ) {
      return `${this.share.user.email}`;
    } else {
      return '';
    }
  }

}
