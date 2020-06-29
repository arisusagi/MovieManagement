using Avaya.Core.Extension;
using Avaya.Core.Repositories;
using Avaya.Core.UoW;
using Avaya.Domain.Models;
using Avaya.Domain.Repositories;
using Avaya.Model.Account;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Avaya.Service.AccountService
{
    public class AccountService : IAccountService
    {
        private readonly IRepository<Acc> _accRepository;
        private readonly IUnitOfWork _unitOfWork;
        public AccountService(IRepository<Acc> accRepository, IUnitOfWork unitOfWork)
        {
            _accRepository = accRepository;
            _unitOfWork = unitOfWork;
        }

        public Account Login(Account data)
        {
            var accountEntity = _accRepository.FirstOrDefault(x => x.UserName.Contains(data.UserName) &&
                                                               x.Password.Contains(data.Password)).MapTo<Account>();
            return accountEntity;
        }

        public List<Acc> GetListAccount()
        {
            var accountEntity = _accRepository.GetAll().ToList();
            return accountEntity;
        }

        public bool UpdateAccount(Acc data)
        {
            if (data == null)
            {
                return false;
            }
            var accountEntity = new Acc();

            accountEntity = _accRepository.GetAll()
                   .FirstOrDefault(x => x.Id == data.Id);
            if (accountEntity != null)
            {
                
                    accountEntity.Id = data.Id;
                    accountEntity.UserName = data.UserName;
                    accountEntity.Password = data.Password;
                    accountEntity.Type = data.Type;

                    _accRepository.Update(accountEntity);
                
            }
            else
            {
                accountEntity = data.MapTo<Acc>();
                _accRepository.Insert(accountEntity);
            }

            var isSaveChangesSuccessed = _unitOfWork.SaveChanges();
            if (!isSaveChangesSuccessed)
            {
                return false;
            }
            return true;
        }

        public bool AddAccount(Acc data)
        {
            if (data == null)
            {
                return false;
            }
            else
            {
                var accountEntity = _accRepository.FirstOrDefault(x => x.UserName.Contains(data.UserName));
                if (accountEntity!=null)
                    return false;
                else
                {
                    accountEntity = data.MapTo<Acc>();
                    _accRepository.Insert(accountEntity);
                }
            }

            var isSaveChangesSuccessed = _unitOfWork.SaveChanges();
            if (!isSaveChangesSuccessed)
            {
                return false;
            }
            return true;
        }

        public bool DeleteAccount(int idDelete)
        {
            var account = _accRepository.GetAll()
                .FirstOrDefault(x => x.Id == idDelete);
            _accRepository.Delete(account, true);

            var isSaveChangesSuccessed = _unitOfWork.SaveChanges();
            if (!isSaveChangesSuccessed)
            {
                return false;
            }
            return true;
        }
    }
}
