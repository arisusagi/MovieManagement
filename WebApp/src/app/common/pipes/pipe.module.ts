import { NgModule } from '@angular/core';
import { TruncatePipe } from './truncate.pipe';
import { SafePipe } from './safe.pipe';

@NgModule({
    declarations: [
        TruncatePipe,
        SafePipe
    ],
    providers: [
    ],
    exports: [
        TruncatePipe,
        SafePipe
    ]
})
export class PipeModule { }
