import { TestBed, inject } from '@angular/core/testing';

import { LansService } from './lans.service';

describe('LansService', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [LansService]
    });
  });

  it('should be created', inject([LansService], (service: LansService) => {
    expect(service).toBeTruthy();
  }));
});
