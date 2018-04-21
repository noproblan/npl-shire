import {Component} from '@angular/core';
import { LansService } from "./core/lans.service";

@Component({
  selector: 'npl-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  title = 'npl';

  constructor(private lanService: LansService) {}

  ngOnInit() {
    this.lanService.getLans().subscribe(
      result => console.log(result)
    );
  }
}
