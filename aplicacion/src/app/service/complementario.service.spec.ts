import { TestBed } from '@angular/core/testing';

import { ComplementarioService } from './complementario.service';

describe('ComplementarioService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: ComplementarioService = TestBed.get(ComplementarioService);
    expect(service).toBeTruthy();
  });
});
