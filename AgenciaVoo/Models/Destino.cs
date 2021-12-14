using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace AgenciaVoo.Models
{
    public class Destino
    {
        [Key]

        public int DestinoId { get; set; }

        [Column(TypeName="varchar(100)")]
        [Required(ErrorMessage ="Este campo precisa ser preenchido!!")]
        [DisplayName("Nome")]
        public string Nome { get; set; }

        [Column(TypeName = "varchar(100)")]
        [Required(ErrorMessage = "Este campo precisa ser preenchido!!")]
        [DisplayName("Email")]
        public string Email { get; set; }

        [Column(TypeName = "varchar(100)")]
        [Required(ErrorMessage = "Este campo precisa ser preenchido!!")]
        [DisplayName("Celular")]
        public string Celular { get; set; }

        [Column(TypeName = "varchar(100)")]
        [Required(ErrorMessage = "Este campo precisa ser preenchido!!")]
        [DisplayName("RG")]
        public string RG { get; set; }

        [Column(TypeName = "varchar(100)")]
        [Required(ErrorMessage = "Este campo precisa ser preenchido!!")]
        [DisplayName("Saindo De:")]
        public string Saida { get; set; }

        [Column(TypeName = "varchar(100)")]
        [Required(ErrorMessage = "Este campo precisa ser preenchido!!")]
        [DisplayName("Indo Para:")]
        public string Chegada { get; set; }

        [Column(TypeName = "varchar(100)")]
        [Required(ErrorMessage = "Este campo precisa ser preenchido!!")]
        [DisplayName("Horario")]
        public string Horario { get; set; }

    }
}
