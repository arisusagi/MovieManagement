using Avaya.Domain.Models;
using Avaya.Model.FilmOnline;
using System;
using System.Collections.Generic;
using System.Text;

namespace Avaya.Service.Film
{
    public interface IFilmService
    {
        List<FilmCarouselModel> GetListFilmsCarousel();

        FilmNominationLoadingModel GetListFilmsNomination();

        FilmNominationLoadingModel GetLoadMoreFilmNomination(int numberFilmNominationCurrent, int numberFilmNominationTake = 5);

        FilmOnline GetFilmDetail(int filmId);

        List<FilmDetailModel> GetListFilmDetails(int filmId, int numberOfFilms);
        List<FilmDetailModel> GetAllListFilm();

        bool UpdateFilmOnline(FilmOnline data);
        bool AddFilmOnline(FilmOnline data);
        bool DeleteFilmOnline(int idDelete);
    }
}
