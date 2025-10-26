<?php
declare(strict_types=1);

namespace BlackCat\Database\Packages\KeyUsage\Dto;

/**
 * Jednoduché, neměnné DTO s veřejnými readonly vlastnostmi.
 * - Bez logiky; pouze nosič dat.
 * - Silné typy drží kontrakt napříč vrstvami.
 */
final class KeyUsageDto {
    public function __construct(
        public readonly ?int $id,
        public readonly int $keyId,
        public readonly \DateTimeImmutable $usageDate,
        public readonly int $encryptCount,
        public readonly int $decryptCount,
        public readonly int $verifyCount,
        public readonly ?\DateTimeImmutable $lastUsedAt
    ) {}

    /** Vhodné pro serializaci/logování (bez velkých blobů). */
    public function toArray(): array {
        return get_object_vars($this);
    }
}
