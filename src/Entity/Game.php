<?php

namespace App\Entity;

class Game
{
    //Attributs
    private int $id; 
    private string $title;
    private string $type;
    private string $publish_at;
    private int $console;

    //Constructeur
public function __construct(
    int $id,
    string $title,
    string $type,
    string $publish_at,
    int $console
)

{
        $this->id = $id;
        $this->title = $title;
        $this->type = $type;
        $this->publish_at = $publish_at;
        $this->console = $console;
}
    //Getters et Setters
    public function getId(): int
    {
        return $this->id;
    }
    public function getTitle(): string
    {
        return $this->title;
    }

    public function getType(): string
    {
        return $this->type;
    }
    public function getPublishAt(): string
    {
        return $this->publish_at;
    }
    public function getConsole(): int
    {
        return $this->console;
    }
    
    //setters
public function setId(int $id): void 
    {
         $this->id = $id;
    }
    public function setTitle(string $title): void 
    {
         $this->title = $title;
    }
    
    public function setType(string $type): void 
    {
         $this->type = $type;
    }
    public function setPublishAt(string $publish_at): void 
    {
         $this->publish_at = $publish_at;
    }
    public function setConsole(int $console): void 
    {
         $this->console = $console;
    }
}

    
