using Avaya.Core.Extension;
using Avaya.Core.Repositories;
using Avaya.Core.UoW;
using Avaya.Domain.Models;
using Avaya.Domain.UoW;
using Avaya.Model.FilmOnline;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Avaya.Service.Film
{
    public class FilmService : IFilmService
    {
        private readonly IRepository<FilmOnline> _filmOnlineRepository;
        private readonly IUnitOfWork _unitOfWork;
        public FilmService(IRepository<FilmOnline> filmOnlineRepository,
            IUnitOfWork unitOfWork)
        {
            _filmOnlineRepository = filmOnlineRepository;
            _unitOfWork = unitOfWork;
        }

        public List<FilmOnline> GetAllListFilm()
        {
            var listFilm = _filmOnlineRepository.GetAll().ToList();
            return listFilm;
        }

        public List<FilmCarouselModel> GetListFilmsCarousel()
        {
            var listFilmsEntity = _filmOnlineRepository.GetAll();
            var listFilms = listFilmsEntity.MapTo<List<FilmCarouselModel>>();

            var listFilmIds = listFilmsEntity.Select(x => x.Id);
            return listFilms;
        }

        public FilmNominationLoadingModel GetListFilmsNomination()
        {
            var filmNomination = new FilmNominationLoadingModel();

            var listFilmsEntity = _filmOnlineRepository.GetAll().Take(7);
            var numberNominationFilmMaximum = _filmOnlineRepository.Count();

            var listFilms = listFilmsEntity.MapTo<List<FilmNominationModel>>();
            filmNomination.ListFilmNominations = listFilms;
            filmNomination.NumberFilmNominationCurrent = 7;
            filmNomination.IsLoadMore = numberNominationFilmMaximum > 7;

            return filmNomination;
        }

        public FilmNominationLoadingModel GetLoadMoreFilmNomination(
            int numberFilmNominationCurrent, int numberFilmNominationTake = 7)
        {
            var filmNomination = new FilmNominationLoadingModel();
            var numberNominationFilmMaximum = _filmOnlineRepository.Count();

            var listFilmsEntity = _filmOnlineRepository.GetAll().Skip(numberFilmNominationCurrent)
                .Take(numberFilmNominationTake).ToList();

            var listFilms = listFilmsEntity.MapTo<List<FilmNominationModel>>();

            filmNomination.ListFilmNominations = listFilms;

            if (numberNominationFilmMaximum == numberFilmNominationCurrent + listFilms.Count)
            {
                filmNomination.IsLoadMore = false;
                filmNomination.NumberFilmNominationCurrent = numberNominationFilmMaximum;
            }
            else
            {
                filmNomination.IsLoadMore = true;
                filmNomination.NumberFilmNominationCurrent = numberFilmNominationCurrent + numberFilmNominationTake;
            }

            return filmNomination;
        }

        public FilmDetailModel GetFilmDetail(int filmId)
        {
            var filmDetail = new FilmDetailModel();

            var filmDetailEntity = _filmOnlineRepository.FirstOrDefault(x => x.Id == filmId);


            filmDetail = filmDetailEntity.MapTo<FilmDetailModel>();

            filmDetail.Date = filmDetailEntity.ReleaseDate.Value.ToString("dd MMMM yyyy");

            return filmDetail;
        }

        public List<FilmDetailModel> GetListFilmDetails(int filmId, int numberOfFilms)
        {
            var listFilmDetails = new List<FilmDetailModel>();
            var listFilmDetailEntities = _filmOnlineRepository.GetAll()
                .Where(x => x.Id != filmId).Take(numberOfFilms).ToList();


            foreach (var item in listFilmDetailEntities)
            {
                var filmDetail = new FilmDetailModel();
                filmDetail = item.MapTo<FilmDetailModel>();




                filmDetail.Date = item.ReleaseDate.Value.ToString("dd MMMM yyyy");

                listFilmDetails.Add(filmDetail);
            }

            return listFilmDetails;
        }

        public bool UpdateFilmOnline(FilmOnline data)
        {
            if (data == null)
            {
                return false;
            }
            var filmOnlineEntity = new FilmOnline();

            filmOnlineEntity = _filmOnlineRepository.GetAll()
                   .FirstOrDefault(x => x.Id == data.Id);
            if (filmOnlineEntity != null)
            {
                filmOnlineEntity.Id = data.Id;
                filmOnlineEntity.ImgUrl = data.ImgUrl;
                filmOnlineEntity.MovieUrl = data.MovieUrl;
                filmOnlineEntity.Title = data.Title;
                filmOnlineEntity.ReleaseDate = data.ReleaseDate;
                filmOnlineEntity.Type = data.Type;
                filmOnlineEntity.Category = data.Category;
                filmOnlineEntity.Duration = data.Duration;
                filmOnlineEntity.Description = filmOnlineEntity.Description;
                _filmOnlineRepository.Update(filmOnlineEntity);
            }
            else
            {
                filmOnlineEntity = data.MapTo<FilmOnline>();
                _filmOnlineRepository.Insert(filmOnlineEntity);
            }

            var isSaveChangesSuccessed = _unitOfWork.SaveChanges();
            if (!isSaveChangesSuccessed)
            {
                return false;
            }
            return true;
        }

        public bool AddFilmOnline(FilmOnline data)
        {
            if (data == null)
            {
                return false;
            }
            else
            {
                var filmOnlineEntity = data.MapTo<FilmOnline>();
                _filmOnlineRepository.Insert(filmOnlineEntity);
            }

            var isSaveChangesSuccessed = _unitOfWork.SaveChanges();
            if (!isSaveChangesSuccessed)
            {
                return false;
            }
            return true;
        }

        public bool DeleteFilmOnline(int idDelete)
        {
            var filmOnline = _filmOnlineRepository.GetAll()
                .FirstOrDefault(x => x.Id == idDelete);
            _filmOnlineRepository.Delete(filmOnline,true);

            var isSaveChangesSuccessed = _unitOfWork.SaveChanges();
            if (!isSaveChangesSuccessed)
            {
                return false;
            }
            return true;
        }
    }
}
