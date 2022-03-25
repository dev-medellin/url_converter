import { Component, OnInit } from '@angular/core';
import { FormBuilder } from '@angular/forms';
import { Observable } from 'rxjs';
import { UrlConvert } from 'src/app/model/Url.mode';
import { ConvertUrlCrudService } from 'src/app/services/convert-url-crud.service';
import { tap } from "rxjs/operators";


@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {
  title = 'convertUrl';
  value = "";
  set_url = 'Converted URL will display here!';
  //@ts-ignore
  convertedUrl$ : Observable<UrlConvert[]>;

  checkoutForm = this.formBuilder.group({
    url_send: '',
  });

  constructor(
    private formBuilder: FormBuilder,
    private convertUrl : ConvertUrlCrudService
  ) {}

  ngOnInit(): void {
    this.convertedUrl$ = this.convertUrl.fetchAll();
  }

  fetchAll(): Observable<UrlConvert[]> {
    return this.convertUrl.fetchAll();
  }
  
  onSubmit(): void {
    var code = this.makeid(8);
    const data =  {
      redirect  : this.checkoutForm.value.url_send,
      alias     : location.origin+'/'+code
    };
    if(this.checkoutForm.value.url_send == ''){
      this.set_url = '';
    }else{
    this.convertedUrl$ = this.convertUrl
    //@ts-ignore
    .post(data)
    .pipe(tap(() => (console.log('success'))));
    this.set_url = location.origin+'/'+code;  
    }

    // this.checkoutForm.reset();
    // this.checkoutForm.value.url_send = '';
  }


  // @ts-ignore
  makeid(length){
    var result           = '';
    var characters       = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    var charactersLength = characters.length;
    for ( var i = 0; i < length; i++ ) {
      result += characters.charAt(Math.floor(Math.random() * 
    charactersLength));
      }
      return result;
  }
}
