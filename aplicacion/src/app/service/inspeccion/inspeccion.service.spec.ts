import { TestBed } from '@angular/core/testing';

import { InspeccionService } from './inspeccion.service';

describe('InspeccionService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: InspeccionService = TestBed.get(InspeccionService);
    expect(service).toBeTruthy();
  });
});
