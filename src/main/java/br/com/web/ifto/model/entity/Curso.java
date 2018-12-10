package br.com.web.ifto.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.validation.constraints.NotEmpty;

import br.com.web.ifto.model.enums.TurnoEnum;

@Entity
public class Curso {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotEmpty
	@Column(name="nome", nullable=false)
	private String nome;

	@Column(name="carga_horaria", nullable=false)
	private String cargaHoraria;
	
	@Column(name="duracao", nullable=false)
	private String duracao;

	@Column(name="objetivo_geral", nullable=false)
	private String objetivoGeral;
	
	@Column(name="area_atuacao", nullable=false)
	private String areaAtuacao;
	
	@Column(name="habilitacao", nullable=false)
	private String habilitacao;
	
	@ManyToOne
	private Coordenacao coordenacao;
	
	@OneToOne
	private Coordenador coordenador;
	
	@Enumerated(EnumType.STRING)
	@Column(name="turno", nullable=false)
	private TurnoEnum turno;
	
	public Curso() {
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCargaHoraria() {
		return cargaHoraria;
	}

	public void setCargaHoraria(String cargaHoraria) {
		this.cargaHoraria = cargaHoraria;
	}

	public String getDuracao() {
		return duracao;
	}

	public void setDuracao(String duracao) {
		this.duracao = duracao;
	}

	public String getObjetivoGeral() {
		return objetivoGeral;
	}

	public void setObjetivoGeral(String objetivoGeral) {
		this.objetivoGeral = objetivoGeral;
	}

	public String getAreaAtuacao() {
		return areaAtuacao;
	}

	public void setAreaAtuacao(String areaAtuacao) {
		this.areaAtuacao = areaAtuacao;
	}

	public String getHabilitacao() {
		return habilitacao;
	}

	public void setHabilitacao(String habilitacao) {
		this.habilitacao = habilitacao;
	}

	public Coordenacao getCoordenacao() {
		return coordenacao;
	}

	public void setCoordenacao(Coordenacao coordenacao) {
		this.coordenacao = coordenacao;
	}

	public Coordenador getCoordenador() {
		return coordenador;
	}

	public void setCoordenador(Coordenador coordenador) {
		this.coordenador = coordenador;
	}

	public TurnoEnum getTurno() {
		return turno;
	}

	public void setTurno(TurnoEnum turno) {
		this.turno = turno;
	}
	
}
