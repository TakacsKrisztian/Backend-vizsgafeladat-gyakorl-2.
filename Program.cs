using Takács_Krisztián_backend2.Models;

namespace Takács_Krisztián_backend2
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);

            builder.Services.AddControllers();
            builder.Services.AddEndpointsApiExplorer();
            builder.Services.AddSwaggerGen();
            builder.Services.AddDbContext<EuroskillsContext>();

            builder.Services.AddCors(c => {
                c.AddPolicy("AllowOrigin",
                options =>
                options.AllowAnyOrigin().AllowAnyMethod()
                .AllowAnyHeader());});

            var app = builder.Build();

            if (app.Environment.IsDevelopment())
            {
                app.UseSwagger();
                app.UseSwaggerUI();
            }

            app.UseHttpsRedirection();

            app.UseAuthorization();

            app.UseCors(options =>
            options.AllowAnyOrigin().AllowAnyMethod()
            .AllowAnyHeader());

            app.MapControllers();

            app.Run();
        }
    }
}