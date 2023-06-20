import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, map } from 'rxjs';
import { of } from 'rxjs';
import { Country } from '../common/country';
import { County } from '../common/county';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})
export class SerpentesFormService {

  private countriesUrl = environment.serpentesApiUrl + '/countries';
  private countiesUrl = environment.serpentesApiUrl + '/counties';

  constructor(private httpClient: HttpClient) { }

  getCountries(): Observable<Country[]> {

    return this.httpClient.get<GetResponseCountries>(this.countriesUrl).pipe(
      map(response => response._embedded.countries)
    );
  }

  getCounties(theCountryCode: string): Observable<County[]> {

    const searchCountiesUrl = `${this.countiesUrl}/search/findByCountryCode?code=${theCountryCode}`;

    return this.httpClient.get<GetResponseCounties>(searchCountiesUrl).pipe(
      map(response => response._embedded.counties)
    );
  }

  getCreditCardMonths(startMonth: number): Observable<number[]> {
    
    let data: number[] = [];

    for(let theMonth = startMonth; theMonth <= 12; theMonth++) {
      data.push(theMonth);
    } 

    return of(data);
  }

  getCreditCardYears(): Observable<number[]> {
    
    let data: number[] = [];

    const startYear: number = new Date().getFullYear();
    const endYear: number = startYear + 10;

    for(let theYear = startYear; theYear <= endYear; theYear++) {
      data.push(theYear);
    } 

    return of(data);
  }
}

interface GetResponseCountries {
  _embedded: {
    countries: Country[];
  }
}

interface GetResponseCounties {
  _embedded: {
    counties: County[];
  }
}