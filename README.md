# Configuração de Diretórios, Grupos e Usuários

Este script Bash tem como objetivo automatizar a criação de diretórios, grupos e usuários, bem como a definição de permissões em um ambiente Linux. É útil para estabelecer um sistema de controle de acesso a pastas compartilhadas. No entanto, existem algumas considerações importantes a serem feitas antes de usar o script.

## Utilização

1. **Permissões de Execução**: Para executar o script, você deve possuir privilégios administrativos ou executá-lo como superusuário (root).

```bash
    sudo ./configuracao.sh
```

2. O script realiza as seguintes operações:

- Criação de Diretórios: São criados quatro diretórios: `/publico`, `/adm`, `/ven`, `/sec`. A localização e a estrutura desses diretórios podem afetar a organização e a segurança do sistema.

- **Criação de Grupos:** Três grupos são criados: `GRP_ADM`, `GRP_VEN`, `GRP_SEC`. É crucial garantir que os nomes dos grupos sejam apropriados e que suas permissões sejam configuradas corretamente.

- **Criação de Usuários:** O script cria nove usuários e os adiciona aos grupos relevantes. As senhas são definidas como `senha123` usando `openssl passwd`, o que não é seguro em um ambiente real. É fundamental implementar políticas de senha robustas.

- **Definição de Permissões:** As permissões são configuradas para os diretórios criados. `/publico` tem permissões abertas para todos, enquanto `/adm`, `/ven`, e `/sec` são acessíveis apenas pelos grupos correspondentes. Certifique-se de que as permissões estejam configuradas de maneira segura.

## Observações
- **Segurança:** Este script foi criado com fins educacionais ou de teste. Em ambientes de produção, siga estritamente as melhores práticas de segurança, como a não utilização de senhas simples e a revisão rigorosa das configurações de permissões.

- **Políticas de Senhas:** Evite o uso de senhas fracas como `senha123`. Implemente políticas de senha sólidas e incentive os usuários a escolherem senhas seguras.

- **Auditoria:** A gestão de grupos e permissões em sistemas Unix pode se tornar complexa à medida que o número de usuários e grupos aumenta. Considere a implementação de um sistema de auditoria para detectar e responder a atividades suspeitas.

- **Requisitos Específicos:** As configurações de grupos e permissões podem variar significativamente com base nos requisitos específicos do seu ambiente. Personalize essas configurações de acordo com as necessidades da sua organização.

Este script é apenas um ponto de partida e deve ser complementado por medidas adicionais para garantir um ambiente seguro e bem gerenciado.

