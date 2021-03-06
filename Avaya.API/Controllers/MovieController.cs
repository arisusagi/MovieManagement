﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web.Http.Cors;
using Avaya.Core.Repositories;
using Avaya.Domain.Models;
using Avaya.Model;
using Avaya.Model.Movie;
using Avaya.Service;
using Avaya.Service.MovieService;
using Microsoft.AspNetCore.Mvc;

namespace Avaya.API.Controllers
{
    [Route("api/[controller]/[action]")]
    [EnableCors(origins: "http://localhost:4200", headers: "*", methods: "*")]
    public class MovieController : Controller
    {
        private readonly IMovieService _movieService;

        public MovieController(IMovieService movieService)
        {
            _movieService = movieService;
        }

        [HttpGet]
        public IActionResult GetAll()
        {
            var listMovie = _movieService.GetAll();
            return Ok(listMovie);
        }



        [HttpPost]
        public IActionResult GetListMovies([FromBody]SearchMovieModel searchMovie)
        {
            var result = _movieService.GetListMovies(searchMovie);
            return Ok(result);
        }


        [HttpGet]
        public IActionResult GetListData()
        {
            var listData = _movieService.GetListData();
            return Ok(listData);
        }
    }
}