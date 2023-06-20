import { TestBed } from '@angular/core/testing';

import { SerpentesFormService } from './serpentes-form.service';

describe('SerpentesFormService', () => {
  let service: SerpentesFormService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(SerpentesFormService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
