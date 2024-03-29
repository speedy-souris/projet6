
CREATE SEQUENCE public.niveau_bug_id_seq;

CREATE TABLE public.niveau_bug (
                id INTEGER NOT NULL DEFAULT nextval('public.niveau_bug_id_seq'),
                ordre INTEGER NOT NULL,
                libelle VARCHAR(100) NOT NULL,
                CONSTRAINT niveau_bug_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.niveau_bug_id_seq OWNED BY public.niveau_bug.id;

CREATE SEQUENCE public.status_id_seq;

CREATE TABLE public.status (
                id INTEGER NOT NULL DEFAULT nextval('public.status_id_seq'),
                libelle VARCHAR(100) NOT NULL,
                CONSTRAINT status_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.status_id_seq OWNED BY public.status.id;

CREATE SEQUENCE public.utilisateur_id_seq;

CREATE TABLE public.utilisateur (
                id INTEGER NOT NULL DEFAULT nextval('public.utilisateur_id_seq'),
                nom VARCHAR(100) NOT NULL,
                prenom VARCHAR(100) NOT NULL,
                CONSTRAINT utilisateur_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.utilisateur_id_seq OWNED BY public.utilisateur.id;

CREATE TABLE public.projet (
                id INTEGER NOT NULL,
                nom VARCHAR(100) NOT NULL,
                date_creation TIMESTAMP NOT NULL,
                cloture BOOLEAN NOT NULL,
                responsable_id INTEGER NOT NULL,
                CONSTRAINT projet_pk PRIMARY KEY (id)
);


CREATE TABLE public.version (
                projet_id INTEGER NOT NULL,
                numero VARCHAR(30) NOT NULL,
                CONSTRAINT version_pk PRIMARY KEY (projet_id, numero)
);


CREATE TABLE public.ticket (
                numero INTEGER NOT NULL,
                titre VARCHAR(300) NOT NULL,
                date TIMESTAMP NOT NULL,
                description VARCHAR(100) NOT NULL,
                statut_actuel_id INTEGER NOT NULL,
                auteur_id INTEGER NOT NULL,
                projet_id INTEGER NOT NULL,
                CONSTRAINT ticket_pk PRIMARY KEY (numero)
);


CREATE TABLE public.ticket_associe (
                ticket_numero INTEGER NOT NULL,
                ticket_associe_numero INTEGER NOT NULL,
                CONSTRAINT ticket_associe_pk PRIMARY KEY (ticket_numero, ticket_associe_numero)
);


CREATE TABLE public.evolution (
                ticket_numero INTEGER NOT NULL,
                priorite INTEGER NOT NULL,
                CONSTRAINT evolution_pk PRIMARY KEY (ticket_numero)
);


CREATE TABLE public.bug (
                ticket_numero INTEGER NOT NULL,
                niveau_bug_id INTEGER NOT NULL,
                CONSTRAINT bug_pk PRIMARY KEY (ticket_numero)
);


CREATE TABLE public.bug_version_affectee (
                bug_ticket_numero INTEGER NOT NULL,
                version_affectee_projet_id INTEGER NOT NULL,
                version_affectee_numero VARCHAR(30) NOT NULL,
                CONSTRAINT bug_version_affectee_pk PRIMARY KEY (bug_ticket_numero, version_affectee_projet_id, version_affectee_numero)
);


CREATE TABLE public.comentaire (
                id INTEGER NOT NULL,
                description VARCHAR(100) NOT NULL,
                utilisateur_id INTEGER NOT NULL,
                ticket_numero INTEGER NOT NULL,
                CONSTRAINT comentaire_pk PRIMARY KEY (id)
);


CREATE TABLE public.historique_statut (
                ticket_numero INTEGER NOT NULL,
                statut_id INTEGER NOT NULL,
                date TIMESTAMP NOT NULL,
                commentaire_id INTEGER NOT NULL,
                utilisateur_id INTEGER NOT NULL,
                CONSTRAINT historique_statut_pk PRIMARY KEY (ticket_numero, statut_id)
);


ALTER TABLE public.bug ADD CONSTRAINT niveau_bug_bug_fk
FOREIGN KEY (niveau_bug_id)
REFERENCES public.niveau_bug (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ticket ADD CONSTRAINT status_ticket_fk
FOREIGN KEY (statut_actuel_id)
REFERENCES public.status (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.historique_statut ADD CONSTRAINT status_historique_statut_fk
FOREIGN KEY (statut_id)
REFERENCES public.status (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.comentaire ADD CONSTRAINT utilisateur_comentaire_fk
FOREIGN KEY (utilisateur_id)
REFERENCES public.utilisateur (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ticket ADD CONSTRAINT utilisateur_ticket_fk
FOREIGN KEY (auteur_id)
REFERENCES public.utilisateur (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.projet ADD CONSTRAINT utilisateur_projet_fk
FOREIGN KEY (responsable_id)
REFERENCES public.utilisateur (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.historique_statut ADD CONSTRAINT utilisateur_historique_statut_fk
FOREIGN KEY (utilisateur_id)
REFERENCES public.utilisateur (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.version ADD CONSTRAINT projet_version_fk
FOREIGN KEY (projet_id)
REFERENCES public.projet (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ticket ADD CONSTRAINT projet_ticket_fk
FOREIGN KEY (projet_id)
REFERENCES public.projet (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.bug_version_affectee ADD CONSTRAINT version_bug_version_affectes_fk
FOREIGN KEY (version_affectee_projet_id, version_affectee_numero)
REFERENCES public.version (projet_id, numero)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.bug ADD CONSTRAINT ticket_bug_fk
FOREIGN KEY (ticket_numero)
REFERENCES public.ticket (numero)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.evolution ADD CONSTRAINT ticket_evolution_fk
FOREIGN KEY (ticket_numero)
REFERENCES public.ticket (numero)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.comentaire ADD CONSTRAINT ticket_comentaire_fk
FOREIGN KEY (ticket_numero)
REFERENCES public.ticket (numero)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ticket_associe ADD CONSTRAINT ticket_ticket_associe_fk
FOREIGN KEY (ticket_numero)
REFERENCES public.ticket (numero)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ticket_associe ADD CONSTRAINT ticket_ticket_associe_fk1
FOREIGN KEY (ticket_associe_numero)
REFERENCES public.ticket (numero)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.historique_statut ADD CONSTRAINT ticket_historique_statut_fk
FOREIGN KEY (ticket_numero)
REFERENCES public.ticket (numero)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.bug_version_affectee ADD CONSTRAINT bug_bug_version_affectes_fk
FOREIGN KEY (bug_ticket_numero)
REFERENCES public.bug (ticket_numero)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.historique_statut ADD CONSTRAINT comentaire_historique_statut_fk
FOREIGN KEY (commentaire_id)
REFERENCES public.comentaire (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
