-- CreateTable
CREATE TABLE "companie_phones" (
    "id" TEXT NOT NULL,
    "ddd" INTEGER NOT NULL,
    "phone" TEXT NOT NULL,
    "type" "PhoneType" NOT NULL DEFAULT 'FIXED',
    "fk_id_companie" TEXT NOT NULL,

    CONSTRAINT "companie_phones_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "companies" (
    "id" TEXT NOT NULL,
    "social_name" TEXT NOT NULL,
    "fantasy_name" TEXT,
    "cnpj" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "fk_id_address" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "companies_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "companie_phones_phone_key" ON "companie_phones"("phone");

-- CreateIndex
CREATE INDEX "companie_phones_ddd_phone_idx" ON "companie_phones"("ddd", "phone");

-- CreateIndex
CREATE UNIQUE INDEX "companies_cnpj_key" ON "companies"("cnpj");

-- CreateIndex
CREATE UNIQUE INDEX "companies_email_key" ON "companies"("email");

-- CreateIndex
CREATE INDEX "companies_cnpj_idx" ON "companies"("cnpj");

-- AddForeignKey
ALTER TABLE "companie_phones" ADD CONSTRAINT "companie_phones_fk_id_companie_fkey" FOREIGN KEY ("fk_id_companie") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "companies" ADD CONSTRAINT "companies_fk_id_address_fkey" FOREIGN KEY ("fk_id_address") REFERENCES "addresses"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
