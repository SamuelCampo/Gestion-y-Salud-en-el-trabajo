import { TestBed } from '@angular/core/testing';

import { CategoriaPadreService } from './categoria-padre.service';

describe('CategoriaPadreService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: CategoriaPadreService = TestBed.get(CategoriaPadreService);
    expect(service).toBeTruthy();
  });
});
