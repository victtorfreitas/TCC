package br.com.web.ifto.model.entity;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotEmpty;

import br.com.web.ifto.model.enums.TurnoEnum;

@Entity
public class Curso {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotEmpty
	private String nome;

	private Coordenacao coordenacao;
	private Coordenador coordenador;
	@Enumerated(EnumType.STRING)
	private TurnoEnum turno;
	@Temporal(TemporalType.TIME)
	private LocalDateTime cargaHoraria;
	@Temporal(TemporalType.TIME)
	private LocalDateTime duracao;
	private String objetivoGeral;
	private String areaAtuacao;
	private String habilitacao;

}
