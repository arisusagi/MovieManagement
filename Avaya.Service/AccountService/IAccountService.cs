using Avaya.Domain.Models;
using Avaya.Model.Account;
using System;
using System.Collections.Generic;
using System.Text;

namespace Avaya.Service.AccountService
{
    public interface IAccountService
    {
        Account Login(Account data);
        List<Acc> GetListAccount();
        bool UpdateAccount(Acc data);
        bool AddAccount(Acc data);
        bool DeleteAccount(int idDelete);
    }
}
