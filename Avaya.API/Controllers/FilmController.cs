﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web.Http.Cors;
using Avaya.Domain.Models;
using Avaya.Model.Account;
using Avaya.Service.AccountService;
using Avaya.Service.Film;
using Microsoft.AspNetCore.Mvc;

namespace Avaya.API.Controllers
{
    [Route("api/[controller]/[action]")]
    [EnableCors(origins: "http://localhost:4200", headers: "*", methods: "*")]
    public class FilmController : Controller
    {
        private readonly IFilmService _filmService;
        private readonly IAccountService _accountService;

        public FilmController(IFilmService filmService, IAccountService accountService)
        {
            _filmService = filmService;
            _accountService = accountService;
        }

        [HttpGet]
        public IActionResult GetListFilmsCarousel()
        {
            var listCarouselFilms = _filmService.GetListFilmsCarousel();
            return Ok(listCarouselFilms);
        }

        [HttpGet]
        public IActionResult GetListFilmsNomination()
        {
            var listNominationFilms = _filmService.GetListFilmsNomination();
            return Ok(listNominationFilms);
        }

        [HttpGet]
        public IActionResult GetLoadMoreFilmNomination(int numberFilmNominationCurrent, int numberFilmNominationTake)
        {
            var listNominationFilms = _filmService.GetLoadMoreFilmNomination(numberFilmNominationCurrent, numberFilmNominationTake);
            return Ok(listNominationFilms);
        }

        [HttpGet("{filmId}")]
        public IActionResult GetFilmDetail(int filmId)
        {
            var filmDetail = _filmService.GetFilmDetail(filmId);
            return Ok(filmDetail);
        }

        [HttpGet]
        public IActionResult GetListFilmDetails(int filmId, int numberOfFilms)
        {
            var listNominationFilms = _filmService.GetListFilmDetails(filmId, numberOfFilms);
            return Ok(listNominationFilms);
        }

        [HttpGet]
        public IActionResult GetAllListFilm()
        {
            var listFilm = _filmService.GetAllListFilm();
            return Ok(listFilm);
        }

        [HttpPost]
        public IActionResult UpdateFilmOnline([FromBody] FilmOnline data)
        {
            var filmOnline = _filmService.UpdateFilmOnline(data);
            return Ok(filmOnline);
        }

        [HttpPost]
        public IActionResult AddFilmOnline([FromBody] FilmOnline data)
        {
            var filmOnline = _filmService.AddFilmOnline(data);
            return Ok(filmOnline);
        }

        [HttpDelete("{idDelete}")]
        public IActionResult DeleteFilmOnline(int idDelete)
        {
            var filmOnline = _filmService.DeleteFilmOnline(idDelete);
            return Ok(filmOnline);
        }

        [HttpPost]
        public IActionResult Login([FromBody] Account data)
        {
            var checkLogin = _accountService.Login(data);
            return Ok(checkLogin);
        }
    }
}