﻿using Avaya.Core.Repositories;
using Avaya.Core.UoW;
using Avaya.Domain.Models;
using Avaya.Domain.Repositories;
using Avaya.Domain.UoW;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Text;

namespace Avaya.Domain
{
    public static class ServiceCollectionExtension
    {
        public static void ConfigureDomain(this IServiceCollection services, IConfiguration configuration)
        {
            services.AddDbContext<MovieTheaterContext>(options =>
                options.UseSqlServer("SERVER=den1.mssql7.gear.host; DATABASE=moviem; USER=moviem; PASSWORD=Td82cgcU47!_"));

            services.AddScoped<IUnitOfWork, UnitOfWork>();
            services.AddScoped<IRepository<BookingDetail>, Repository<BookingDetail>>();
            services.AddScoped<IRepository<Cinema>, Repository<Cinema>>();
            services.AddScoped<IRepository<Movie>, Repository<Movie>>();
            services.AddScoped<IRepository<MovieTheaterContext>, Repository<MovieTheaterContext>>();
            services.AddScoped<IRepository<ReservedSeat>, Repository<ReservedSeat>>();
            services.AddScoped<IRepository<Room>, Repository<Room>>();
            services.AddScoped<IRepository<RoomDetail>, Repository<RoomDetail>>();
            services.AddScoped<IRepository<SeatType>, Repository<SeatType>>();
            services.AddScoped<IRepository<ShowTime>, Repository<ShowTime>>();
            services.AddScoped<IRepository<Service>, Repository<Service>>();
            services.AddScoped<IRepository<Menu>, Repository<Menu>>();
            services.AddScoped<IRepository<Booking>, Repository<Booking>>();
            services.AddScoped<IRepository<FilmCategory>, Repository<FilmCategory>>();
            services.AddScoped<IRepository<NewsArticleCategories>, Repository<NewsArticleCategories>>();
            services.AddScoped<IRepository<NewsArticles>, Repository<NewsArticles>>();
            services.AddScoped<IRepository<NewsImage>, Repository<NewsImage>>();
            services.AddScoped<IRepository<NewsCategories>, Repository<NewsCategories>>();
            services.AddScoped<IRepository<FilmOnline>, Repository<FilmOnline>>();
            services.AddScoped<IRepository<CategoriesOfFilm>, Repository<CategoriesOfFilm>>();
            services.AddScoped<IRepository<Bill>, Repository<Bill>>();
            services.AddScoped<IRepository<BillDetail>, Repository<BillDetail>>();
            services.AddScoped<IRepository<Product>, Repository<Product>>();
            services.AddScoped<IRepository<ProductCinema>, Repository<ProductCinema>>();
            services.AddScoped<IRepository<RoomShowTime>, Repository<RoomShowTime>>();
            services.AddScoped<IRepository<Acc>, Repository<Acc>>();
        }
    }
}
