CREATE SEQUENCE IF NOT EXISTS public.user_seq;

CREATE TABLE IF NOT EXISTS public.user (
                user_id INTEGER NOT NULL DEFAULT nextval('public.user_seq'),
                user_name TEXT,
                user_login TEXT,
                password TEXT,
                user_info TEXT,
                email TEXT,
                creation_date TIMESTAMP WITH TIME ZONE,
                deleted TIMESTAMP WITH TIME ZONE,
                password_changed BOOLEAN NOT NULL DEFAULT FALSE,
                CONSTRAINT user_pkey PRIMARY KEY (user_id)
);

COMMENT ON TABLE public.user IS 'Users of the Gaming Store system.';
COMMENT ON COLUMN public.user.user_id IS 'Internal user identifier in the database.';
COMMENT ON COLUMN public.user.user_name IS 'User name.';
COMMENT ON COLUMN public.user.user_login IS 'User login.';
COMMENT ON COLUMN public.user.password IS 'Password of the user.';
COMMENT ON COLUMN public.user.user_info IS 'Additional information about the user.';
COMMENT ON COLUMN public.user.email IS 'Mandatory e-mail address of the user.';
COMMENT ON COLUMN public.user.creation_date IS 'Date and time when the user was created.';
COMMENT ON COLUMN public.user.deleted IS 'Date and time when the user was deleted.';
COMMENT ON COLUMN public.user.password_changed IS 'TRUE, if the user has to change the password';


ALTER SEQUENCE public.user_seq OWNED BY public.user.user_id;
