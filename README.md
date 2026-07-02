# iOS Animations - Projeto de Estudo

Aplicativo desenvolvido em UIKit com o objetivo de praticar animações programáticas utilizando `UIView.animate`. O projeto apresenta uma imagem central e permite executar diferentes animações ao tocar no botão, sem o uso de Storyboards.

Este projeto faz parte do Project 15 do curso 100 Days of Swift, sendo desenvolvido para consolidar conceitos fundamentais de animação de interfaces com UIKit e Core Animation.

## O que o app faz

- Aumenta e restaura o tamanho da imagem
- Move a imagem para outra posição e a retorna ao centro
- Rotaciona a imagem em 180 graus
- Altera a transparência da imagem para criar efeito de desaparecimento
- Restaura a visibilidade da imagem
- Utiliza animação com efeito de spring
- Impede novos toques no botão enquanto a animação está em execução

## Arquitetura

O projeto foi estruturado utilizando UIKit e interface programática, sem o uso de Storyboards.

A interface foi separada em duas responsabilidades:

- `AnimationsView`: responsável pela criação da interface, configuração visual e constraints.
- `AnimationsViewController`: responsável por controlar o ciclo das animações e responder à interação do usuário.

## Decisões importantes

- Interface totalmente programática
- Uso de `loadView()` para definir a view principal da tela
- Uso de Auto Layout para centralizar a imagem e posicionar o botão
- Uso de `UIView.animate` para animar mudanças de estado
- Uso de `CGAffineTransform` para escala, translação e rotação
- Uso de `alpha` para animação de transparência
- Uso de `completion` para reabilitar o botão após cada animação
- Uso de `usingSpringWithDamping` para criar efeito de bounce
- Extensão `UIColor+Hex` para utilizar cores em hexadecimal

## Conceitos praticados

- UIKit
- UIView
- UIViewController
- Auto Layout
- NSLayoutConstraint
- `UIView.animate`
- Spring animations
- `CGAffineTransform`
- Scale transform
- Translation transform
- Rotation transform
- `alpha`
- `backgroundColor`
- Closures
- Completion handlers
- Interface programática
- `UIButton.Configuration`

## Créditos

Projeto baseado no Project 15, do curso 100 Days of Swift, criado por :contentReference[oaicite:0]{index=0} (:contentReference[oaicite:1]{index=1}).
