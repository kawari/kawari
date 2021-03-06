//---------------------------------------------------------------------------
//
// "華和梨" for あれ以外の何か以外の何か
// SHIORI インターフェース Python版
//
//              ABE, Suikyo.
//
//  2003.03.07  Phase 8.1.0   あべさんのパッチを取り込み
//  2004.09.04  Phase 8.2.1   杉谷さんのレポートを反映
//
//---------------------------------------------------------------------------
#ifndef PY_SHIORI_H
#define PY_SHIORI_H
//---------------------------------------------------------------------------
#include "config.h"
//---------------------------------------------------------------------------
#include "include/shiori.h"
//---------------------------------------------------------------------------
SHIORI_EXPORT void SHIORI_CALL init_kawari8();

int py_saori_exist(const char *saori);
int py_saori_load(const char *saori, const char *path);
int py_saori_unload(const char *saori);
char *py_saori_request(const char *saori, const char *req);
//---------------------------------------------------------------------------
#endif // PY_SHIORI_H
//---------------------------------------------------------------------------
