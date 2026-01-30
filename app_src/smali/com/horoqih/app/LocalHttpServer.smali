.class public final Lcom/horoqih/app/LocalHttpServer;
.super Lfi/iki/elonen/NanoHTTPD;
.source "LocalHttpServer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/horoqih/app/LocalHttpServer;",
        "Lfi/iki/elonen/NanoHTTPD;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "serve",
        "Lfi/iki/elonen/NanoHTTPD$Response;",
        "session",
        "Lfi/iki/elonen/NanoHTTPD$IHTTPSession;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x1f93

    .line 9
    invoke-direct {p0, v0}, Lfi/iki/elonen/NanoHTTPD;-><init>(I)V

    .line 8
    iput-object p1, p0, Lcom/horoqih/app/LocalHttpServer;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public serve(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 11

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lcom/horoqih/app/DatabaseHelper;

    iget-object v1, p0, Lcom/horoqih/app/LocalHttpServer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/horoqih/app/DatabaseHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/horoqih/app/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 15
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/login"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const-string/jumbo v3, "{}"

    const-string v4, "postData"

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getMethod()Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object v1

    sget-object v7, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    if-ne v1, v7, :cond_2

    .line 17
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 18
    move-object v7, v1

    check-cast v7, Ljava/util/Map;

    invoke-interface {p1, v7}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->parseBody(Ljava/util/Map;)V

    .line 20
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-direct {p1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "username"

    .line 22
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "password"

    .line 23
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    # CTF HOOK: Hardcoded Credentials
    const-string v7, "admin123"
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v7
    if-eqz v7, :cond_ctf_hardcoded
    const-string v7, "admin"
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v7
    if-eqz v7, :cond_ctf_hardcoded
    iget-object v7, p0, Lcom/horoqih/app/LocalHttpServer;->context:Landroid/content/Context;
    const-string v8, "Hardcoded Credentials"
    invoke-static {v7, v8}, Lcom/horoqih/app/CtfManager;->addScore(Landroid/content/Context;Ljava/lang/String;)V
    :cond_ctf_hardcoded

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SELECT id, role FROM users WHERE username=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' AND password=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v1, 0x27

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {v0, p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 30
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 33
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    # CTF HOOK: SQL Injection
    const-string v7, "admin"
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v7
    if-eqz v7, :cond_ctf_sqli
    iget-object v7, p0, Lcom/horoqih/app/LocalHttpServer;->context:Landroid/content/Context;
    const-string v8, "SQL Injection (Admin)"
    invoke-static {v7, v8}, Lcom/horoqih/app/CtfManager;->addScore(Landroid/content/Context;Ljava/lang/String;)V
    :cond_ctf_sqli

    .line 35
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "\n                    {\n                      \"status\":\"success\",\n                      \"userId\":"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",\n                      \"role\":\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\"\n                    }\n                    "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-static {p1}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-static {p1}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    .line 30
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    .line 48
    :cond_1
    # CTF HOOK: Rate Limiting
    iget-object v0, p0, Lcom/horoqih/app/LocalHttpServer;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/horoqih/app/CtfManager;->incrementFailedLogin(Landroid/content/Context;)V

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    const-string/jumbo p1, "{ \"status\":\"error\" }"

    .line 49
    invoke-static {p1}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    .line 47
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    return-object p1

    .line 53
    :cond_2
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v1

    const-string v7, "getUri(...)"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "/dashboard"

    const/4 v8, 0x2

    invoke-static {v1, v7, v6, v8, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    const-string v7, "userId"

    if-eqz v1, :cond_5

    .line 56
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getParameters()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    # CTF HOOK: IDOR
    new-instance v7, Lcom/horoqih/app/SessionManager;
    iget-object v8, p0, Lcom/horoqih/app/LocalHttpServer;->context:Landroid/content/Context;
    invoke-direct {v7, v8}, Lcom/horoqih/app/SessionManager;-><init>(Landroid/content/Context;)V
    invoke-virtual {v7}, Lcom/horoqih/app/SessionManager;->getUserId()I
    move-result v7
    if-eq p1, v7, :cond_ctf_idor
    const/4 v8, -0x1
    if-eq p1, v8, :cond_ctf_idor
    iget-object v7, p0, Lcom/horoqih/app/LocalHttpServer;->context:Landroid/content/Context;
    const-string v8, "IDOR (Profile)"
    invoke-static {v7, v8}, Lcom/horoqih/app/CtfManager;->addScore(Landroid/content/Context;Ljava/lang/String;)V
    :cond_ctf_idor

    goto :goto_2

    :cond_3
    const/4 p1, -0x1

    .line 59
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SELECT username, role, balance FROM users WHERE id="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {v0, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 65
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 69
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "\n                    {\n                      \"userId\": "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",\n                      \"username\": \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\",\n                      \"role\": \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\",\n                      \"balance\": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\n                    }\n                    "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-static {p1}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {p1}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    .line 63
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_3

    .line 83
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const-string/jumbo p1, "{ \"error\":\"user not found\" }"

    .line 84
    invoke-static {p1}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    .line 82
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_3
    return-object p1

    .line 88
    :cond_5
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v1

    const-string v8, "/purchase"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v8, "{ \"status\":\"invalid_user\" }"

    const-string v9, "newFixedLengthResponse(...)"

    if-eqz v1, :cond_9

    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getMethod()Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object v1

    sget-object v10, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    if-ne v1, v10, :cond_9

    .line 90
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 91
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    invoke-interface {p1, v2}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->parseBody(Ljava/util/Map;)V

    .line 93
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    move-object v3, v1

    :goto_4
    invoke-direct {p1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "price"

    .line 96
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    # CTF HOOK: Price Manipulation & Negative Amount
    const v7, 0x9c3f # 39999
    if-ge p1, v7, :cond_ctf_price
    iget-object v7, p0, Lcom/horoqih/app/LocalHttpServer;->context:Landroid/content/Context;
    const-string v8, "Price Manipulation"
    invoke-static {v7, v8}, Lcom/horoqih/app/CtfManager;->addScore(Landroid/content/Context;Ljava/lang/String;)V
    :cond_ctf_price
    if-gez p1, :cond_ctf_neg
    iget-object v7, p0, Lcom/horoqih/app/LocalHttpServer;->context:Landroid/content/Context;
    const-string v8, "Negative Amount"
    invoke-static {v7, v8}, Lcom/horoqih/app/CtfManager;->addScore(Landroid/content/Context;Ljava/lang/String;)V
    :cond_ctf_neg

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT balance FROM users WHERE id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-virtual {v0, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 103
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_7

    .line 104
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 105
    invoke-static {v8}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 108
    :cond_7
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 109
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    if-ge v3, p1, :cond_8

    const-string/jumbo p1, "{ \"status\":\"insufficient_balance\" }"

    .line 112
    invoke-static {p1}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_8
    sub-int/2addr v3, p1

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "UPDATE users SET balance="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " WHERE id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n                {\n                  \"status\":\"success\",\n                  \"charged\": "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",\n                  \"remainingBalance\": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\n                }\n                "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-static {p1}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-static {p1}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 134
    :cond_9
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v1

    const-string v10, "/change-password"

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getMethod()Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object v1

    sget-object v10, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    if-ne v1, v10, :cond_f

    .line 136
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 137
    move-object v10, v1

    check-cast v10, Ljava/util/Map;

    invoke-interface {p1, v10}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->parseBody(Ljava/util/Map;)V

    .line 139
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_a

    goto :goto_5

    :cond_a
    move-object v3, v1

    :goto_5
    invoke-direct {p1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "oldPassword"

    .line 142
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "newPassword"

    .line 143
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "confirmPassword"

    .line 144
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 146
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    const-string/jumbo p1, "{ \"status\":\"password_mismatch\" }"

    .line 147
    invoke-static {p1}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 153
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v7, "SELECT password FROM users WHERE id="

    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-virtual {v0, p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 157
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_c

    .line 158
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 159
    invoke-static {v8}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 162
    :cond_c
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 163
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 165
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object p1, v3

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_d

    goto :goto_6

    :cond_d
    move v2, v6

    :goto_6
    if-eqz v2, :cond_e

    .line 167
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    const-string/jumbo p1, "{ \"status\":\"wrong_password\" }"

    .line 168
    invoke-static {p1}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 176
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "UPDATE users SET password=\'"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\' WHERE id="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 175
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo p1, "{ \"status\":\"success\" }"

    .line 179
    invoke-static {p1}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_f
    const-string p1, "404"

    .line 184
    invoke-static {p1}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
