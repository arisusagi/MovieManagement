import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';
import { InputComponent } from '../common/components/input/input.component';
import { CommonComponentModule } from '../common/components/common-component.module';
import { AppCommonModule } from '../common/app-common.module';
import { LoginModalComponent } from './login/login.modal.component';
import { ForgottenModalComponent } from './forgotten/forgotten.modal.component';
import { EditComponent } from './edit/edit.component';
import { AddComponent } from './add/add.component';
import { DeleteComponent } from './delete/delete.component';
import { AddAccountComponent } from './add-account/add-account.component';
import { EditAccountComponent } from './edit-account/edit-account.component';
import { DeleteAccountComponent } from './delete-account/delete-account.component';

@NgModule({
    declarations: [
        LoginModalComponent,
        ForgottenModalComponent,
        EditComponent,
        AddComponent,
        DeleteComponent,
        AddAccountComponent,
        EditAccountComponent,
        DeleteAccountComponent,
    ],
    imports: [
        FormsModule,
        CommonModule,
        AppCommonModule
    ],
    providers: [
    ],
    entryComponents: [
        LoginModalComponent,
        ForgottenModalComponent,
        EditComponent,
        AddComponent,
        DeleteComponent,
        AddAccountComponent,
        EditAccountComponent,
        DeleteAccountComponent,
    ],
    exports: [
        LoginModalComponent,
        ForgottenModalComponent,
        EditComponent,
        AddComponent,
        DeleteComponent,
        AddAccountComponent,
        EditAccountComponent,
        DeleteAccountComponent,
    ]
})
export class ModalsModule { }
