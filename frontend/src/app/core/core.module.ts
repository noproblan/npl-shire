import { NgModule, Optional, SkipSelf } from '@angular/core';
import { Apollo, ApolloModule } from 'apollo-angular';
import { HttpLink, HttpLinkModule } from 'apollo-angular-link-http';
import { InMemoryCache } from 'apollo-cache-inmemory';
import { HttpClientModule } from '@angular/common/http';

import { environment } from '../../environments/environment';
import { LansService } from './lans.service';

@NgModule({
  imports: [
    ApolloModule,
    HttpClientModule,
    HttpLinkModule,
  ],
  declarations: [],
  providers: [
    LansService
  ]
})
export class CoreModule {
  constructor(apollo: Apollo,
              httpLink: HttpLink,
              @Optional() @SkipSelf() parentModule: CoreModule) {
    if (parentModule) {
      throw new Error(`CoreModule has already been loaded. Import CoreModule in the AppModule only.`);
    }

    apollo.create({
      link: httpLink.create({
        uri: environment.apiUrl
      }),
      cache: new InMemoryCache()
    });
  }
}
