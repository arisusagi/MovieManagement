using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web.Http.Cors;
using Avaya.Domain.Models;
using Avaya.Model.Account;
using Avaya.Service.AccountService;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace Avaya.API.Controllers
{
    [Route("api/[controller]/[action]")]
    [EnableCors(origins: "http://localhost:4200", headers: "*", methods: "*")]
    public class AccountController : Controller
    {
        private readonly IAccountService _accountService;

        public AccountController(IAccountService accountService)
        {
            _accountService = accountService;
        }

        [HttpGet]
        public IActionResult GetListAccount()
        {
            var listAcc = _accountService.GetListAccount();
            return Ok(listAcc);
        }

        [HttpPost]
        public IActionResult UpdateAccount([FromBody] Acc data)
        {
            var account = _accountService.UpdateAccount(data);
            return Ok(account);
        }

        [HttpPost]
        public IActionResult AddAccount([FromBody] Acc data)
        {
            var account = _accountService.AddAccount(data);
            return Ok(account);
        }

        [HttpDelete("{idDelete}")]
        public IActionResult DeleteAccount(int idDelete)
        {
            var account = _accountService.DeleteAccount(idDelete);
            return Ok(account);
        }

    }
}
