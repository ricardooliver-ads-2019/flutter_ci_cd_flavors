# 📦 Pull Request

> Marque os itens aplicáveis antes de solicitar review.  
> **Regra:** PRs pequenos e claros são mais fáceis de revisar e dão menos regressão.

---

## 🔗 Contexto / Issue
<!-- Linke a tarefa/issue: Jira, Linear, GitHub Issue, Notion etc -->
- Issue/Ticket: #

---

## 🧠 O que mudou (resumo)
<!-- 2–6 linhas: o que foi feito e por quê -->
- 
- 

---

## 🎯 Tipo de mudança
Marque uma opção com "x":

- [ ] ✨ Nova funcionalidade
- [ ] 🛠️ Correção de bug
- [ ] ❌ Breaking change
- [ ] 🧹 Refatoração (sem mudança de comportamento)
- [ ] ✅ Build/CI/CD (pipelines, fastlane, flavors, configs)
- [ ] 📝 Documentação
- [ ] 🗑️ Chore (manutenção)
- [ ] 🚀 Release (develop → main)

---

## 🧪 Plano de teste
<!-- Como validar? Seja objetivo. Se não testou, explique por quê. -->
- [ ] Testei no Android (HML)
- [ ] Testei no Android (PROD)
- [ ] (Opcional) Testei no iOS (HML)
- [ ] (Opcional) Testei no iOS (PROD)

Passos:
1. 
2. 
3. 

---

## ✅ Evidências / Validação
<!-- Prints, vídeos, logs, link do Firebase App Distribution (se aplicável) -->
- 

---

## ⚠️ Impacto e Risco
<!-- Ajuda o reviewer a entender consequências -->
- Impacto em performance: [ ] sim [ ] não (detalhar)
- Mudanças em APIs/contratos: [ ] sim [ ] não
- Mudanças em analytics/crashlytics: [ ] sim [ ] não
- Mudanças que afetam login/pagamento/dados: [ ] sim [ ] não

Risco geral:
- [ ] baixo
- [ ] médio
- [ ] alto

---

## 🧰 Checklist geral (sempre)
- [ ] O código compila localmente
- [ ] Rodei `flutter analyze` (ou CI cobre)
- [ ] Rodei `flutter test` (ou CI cobre)
- [ ] `dart format` aplicado (ou CI cobre)
- [ ] Não adicionei secrets no código/logs/prints
- [ ] Nenhuma dependência desnecessária foi adicionada
- [ ] Documentação atualizada (se necessário)
- [ ] Este PR aponta para a branch correta (`develop` ou `main`)

---

# 🚀 Checklist de RELEASE (somente se for develop → main)
> Esta seção é obrigatória para PR de release.

## 📌 Versão (pubspec.yaml é a fonte da verdade)
- [ ] Atualizei o `versionName (X.Y.Z)` no `pubspec.yaml`
- [ ] Mantive o `buildNumber (+N)` (o beta incrementa automaticamente)
- [ ] A versão final ficou exatamente:  
  `version: ____.___.___+____`

## 🏷️ Tag e Deploy
- [ ] Entendo que a tag será criada automaticamente a partir do `pubspec.yaml` (ex.: `vX.Y.Z`)
- [ ] Entendo que **se a tag já existir**, a pipeline falhará (proteção anti-tag repetida)
- [ ] O deploy de produção será disparado por `push` da tag `v*`

## ✅ Pronto para produção
- [ ] HML/QA aprovado (release está validado)
- [ ] Sem pendências críticas na `develop`
- [ ] Se necessário, changelog/release notes preparados

## 🔙 Rollback (plano de reversão)
<!-- Em empresa isso é obrigatório: como desfaz se der ruim? -->
- Plano: Reverter o PR na `main` e criar um novo release com nova versão/tag
