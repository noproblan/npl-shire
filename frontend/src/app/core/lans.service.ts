import {Injectable} from '@angular/core';
import { Observable } from 'rxjs/Observable';

import { environment } from '../../environments/environment';
// import { Lan } from '../shared/lan.model';
import {Apollo} from 'apollo-angular';
import { map } from 'rxjs/operators';
import gql from 'graphql-tag';
import {Lan,Query} from './graphql-types';

const allLans = gql`
  query AllLans {
    lans {
      id
      name
      startsAt
      endsAt
    }
  }
`;

@Injectable()
export class LansService {

  // readonly lansEndpoint = '/lans';

  constructor(private apollo: Apollo) {}

  getLans() {
    // return null;
    // return this.httpClient.get<Lan[]>(`${environment.apiUrl}${this.lansEndpoint}`);

    return this.apollo.watchQuery<Query>({
      query: allLans
    }).valueChanges;

    // return this.apollo.watchQuery<Query>({
    //   query: allLans
    // })
    //   .valueChanges
    //   .pipe<Lan[]>(
    //     map(result => result.data.lans)
    //   );
  }

  getLan(id: number): Observable<Lan> {
    return null;
    // return this.httpClient.get<Lan>(`${environment.apiUrl}${this.lansEndpoint}/${id}`);
  }

}
