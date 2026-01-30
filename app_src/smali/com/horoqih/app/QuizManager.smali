.class public Lcom/horoqih/app/QuizManager;
.super Ljava/lang/Object;
.source "QuizManager.java"

.field private static final PREF_NAME:Ljava/lang/String; = "HoroqihQuizPrefs"
.field private static final KEY_NEXT_QUIZ_TIME:Ljava/lang/String; = "next_quiz_time"
.field private static final KEY_SOLVED_INDEX:Ljava/lang/String; = "solved_index"

# 5 minutes in millis (Initial start delay)
.field private static final INITIAL_DELAY:J = 0x493e0 

# 1 hour in millis (Penalty for wrong answer)
.field private static final PENALTY_DELAY:J = 0x36ee80 

# 10 minutes in millis (Cooldown between successful quizzes)
.field private static final SUCCESS_DELAY:J = 0x927c0 

.method public static shouldShowQuiz(Landroid/content/Context;)Z
    .locals 6
    const/4 v0, 0x0
    const-string v1, "HoroqihQuizPrefs"
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object p0
    
    const-string v1, "next_quiz_time"
    const-wide/16 v2, 0x0
    invoke-interface {p0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    move-result-wide v4
    
    cmp-long v1, v4, v2
    if-nez v1, :cond_first
    # First run, set initial delay (now + 5 mins)
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    sget-wide v2, Lcom/horoqih/app/QuizManager;->INITIAL_DELAY:J
    add-long/2addr v0, v2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object p0
    const-string v2, "next_quiz_time"
    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    const/4 v0, 0x0
    return v0

    :cond_first
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v1
    cmp-long v3, v1, v4
    if-ltz v3, :cond_show
    const/4 v0, 0x1
    :cond_show
    return v0
.end method

.method public static handleCorrectAnswer(Landroid/content/Context;)V
    .locals 5
    const/4 v0, 0x0
    const-string v1, "HoroqihQuizPrefs"
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object p0
    
    # Increment solved index
    const-string v1, "solved_index"
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    move-result v0
    add-int/lit8 v0, v0, 0x1
    
    # Set next quiz time (now + 10 mins)
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v1
    sget-wide v3, Lcom/horoqih/app/QuizManager;->SUCCESS_DELAY:J
    add-long/2addr v1, v3
    
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object p0
    const-string v3, "solved_index"
    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    const-string v0, "next_quiz_time"
    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    return-void
.end method

.method public static handleWrongAnswer(Landroid/content/Context;)V
    .locals 5
    const/4 v0, 0x0
    const-string v1, "HoroqihQuizPrefs"
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object p0
    
    # Penalty: Wait 1 hour to retry
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    sget-wide v2, Lcom/horoqih/app/QuizManager;->PENALTY_DELAY:J
    add-long/2addr v0, v2
    
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object p0
    const-string v2, "next_quiz_time"
    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    return-void
.end method

.method public static snoozeQuiz(Landroid/content/Context;)V
    .locals 5
    const/4 v0, 0x0
    const-string v1, "HoroqihQuizPrefs"
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object p0
    
    # Snooze for 10 minutes
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    sget-wide v2, Lcom/horoqih/app/QuizManager;->SUCCESS_DELAY:J
    add-long/2addr v0, v2
    
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object p0
    const-string v2, "next_quiz_time"
    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    return-void
.end method

.method public static getCurrentQuestionIndex(Landroid/content/Context;)I
    .locals 2
    const/4 v0, 0x0
    const-string v1, "HoroqihQuizPrefs"
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object p0
    const-string v1, "solved_index"
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    move-result v0
    return v0
.end method