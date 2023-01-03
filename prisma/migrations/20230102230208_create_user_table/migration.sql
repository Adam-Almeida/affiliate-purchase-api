-- CreateEnum
CREATE TYPE "Role" AS ENUM ('COLABORATOR', 'ADMINSTORE', 'CORPORATE');

-- CreateTable
CREATE TABLE "users" (
    "id" TEXT NOT NULL,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT,
    "email" TEXT NOT NULL,
    "email_actived" BOOLEAN NOT NULL DEFAULT true,
    "password" TEXT NOT NULL,
    "user_type" "Role" NOT NULL DEFAULT 'COLABORATOR',
    "document_rg" TEXT NOT NULL,
    "document_cpf" TEXT NOT NULL,
    "last_access" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "users_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "users_email_key" ON "users"("email");

-- CreateIndex
CREATE UNIQUE INDEX "users_document_cpf_key" ON "users"("document_cpf");

-- CreateIndex
CREATE INDEX "users_document_cpf_email_idx" ON "users"("document_cpf", "email");
