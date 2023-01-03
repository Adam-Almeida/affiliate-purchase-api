-- CreateEnum
CREATE TYPE "PhoneType" AS ENUM ('FIXED', 'MOBILE');

-- CreateTable
CREATE TABLE "user_phones" (
    "id" TEXT NOT NULL,
    "ddd" INTEGER NOT NULL,
    "phone" TEXT NOT NULL,
    "type" "PhoneType" NOT NULL DEFAULT 'FIXED',
    "fk_id_user" TEXT NOT NULL,

    CONSTRAINT "user_phones_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "user_phones_phone_key" ON "user_phones"("phone");

-- CreateIndex
CREATE INDEX "user_phones_ddd_phone_idx" ON "user_phones"("ddd", "phone");

-- AddForeignKey
ALTER TABLE "user_phones" ADD CONSTRAINT "user_phones_fk_id_user_fkey" FOREIGN KEY ("fk_id_user") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
