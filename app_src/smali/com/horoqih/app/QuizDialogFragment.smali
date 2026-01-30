.class public Lcom/horoqih/app/QuizDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.implements Landroid/view/View$OnClickListener;

.field private currentQuestionIndex:I
.field private correctOptionIndex:I
.field private root:Landroid/view/View;

.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    sget v0, Lcom/horoqih/app/R$layout;->dialog_quiz:I
    const/4 v1, 0x0
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object v0
    iput-object v0, p0, Lcom/horoqih/app/QuizDialogFragment;->root:Landroid/view/View;
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getContext()Landroid/content/Context;
    move-result-object v0
    
    invoke-static {v0}, Lcom/horoqih/app/QuizManager;->getCurrentQuestionIndex(Landroid/content/Context;)I
    move-result v1
    iput v1, p0, Lcom/horoqih/app/QuizDialogFragment;->currentQuestionIndex:I
    
    const/16 v2, 0x8
    if-lt v1, v2, :cond_ui_setup
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V
    return-void

    :cond_ui_setup
    sget v2, Lcom/horoqih/app/R$id;->quizQuestion:I
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v2
    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/horoqih/app/R$id;->quizOption1:I
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v3
    check-cast v3, Landroid/widget/RadioButton;

    sget v4, Lcom/horoqih/app/R$id;->quizOption2:I
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v4
    check-cast v4, Landroid/widget/RadioButton;

    sget v5, Lcom/horoqih/app/R$id;->quizOption3:I
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v5
    check-cast v5, Landroid/widget/RadioButton;

    sget v6, Lcom/horoqih/app/R$id;->quizOption4:I
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v6
    check-cast v6, Landroid/widget/RadioButton;

    if-nez v1, :cond_q1
    const-string v1, "What is the biggest risk of storing user passwords without hashing?"
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const-string v1, "Data leak reveals all credentials"
    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V
    const-string v1, "App runs slowly"
    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V
    const-string v1, "Higher battery usage"
    invoke-virtual {v5, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V
    const-string v1, "Offline access fails"
    invoke-virtual {v6, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V
    const/4 v1, 0x1
    iput v1, p0, Lcom/horoqih/app/QuizDialogFragment;->correctOptionIndex:I
    goto :goto_listeners

    :cond_q1
    const/4 v7, 0x1
    if-ne v1, v7, :cond_q2
    const-string v1, "Why would an attacker use a tool like Burp Suite or Charles Proxy?"
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const-string v1, "To boost Wi-Fi signals"
    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V
    const-string v1, "To intercept and modify network traffic"
    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V
    const-string v1, "To bypass lock screens"
    invoke-virtual {v5, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V
    const-string v1, "To install paid apps for free"
    invoke-virtual {v6, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V
    const/4 v1, 0x2
    iput v1, p0, Lcom/horoqih/app/QuizDialogFragment;->correctOptionIndex:I
    goto :goto_listeners

    :cond_q2
    const/4 v7, 0x2
    if-ne v1, v7, :cond_q3
    const-string v1, "Why is it dangerous for an app to print sensitive info to system logs?"
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const-string v1, "It triggers anti-virus alerts"
    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V
    const-string v1, "It takes up too much storage"
    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V
    const-string v1, "Other apps or ADB can read the logs"
    invoke-virtual {v5, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V
    const-string v1, "It prevents app updates"
    invoke-virtual {v6, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V
    const/4 v1, 0x3
    iput v1, p0, Lcom/horoqih/app/QuizDialogFragment;->correctOptionIndex:I
    goto :goto_listeners

    :cond_q3
    const/4 v7, 0x3
    if-ne v1, v7, :cond_q4
    const-string v1, "If a device is rooted, what happens to the local app database file?"
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const-string v1, "It can be accessed and stolen by anyone"
    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V
    const-string v1, "It gets automatically encrypted"
    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V
    const-string v1, "The app will no longer open it"
    invoke-virtual {v5, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V
    const-string v1, "It is deleted for safety"
    invoke-virtual {v6, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V
    const/4 v1, 0x1
    iput v1, p0, Lcom/horoqih/app/QuizDialogFragment;->correctOptionIndex:I
    goto :goto_listeners

    :cond_q4
    const/4 v7, 0x4
    if-ne v1, v7, :cond_q5
    const-string v1, "What is the primary purpose of Root Detection in a secure app?"
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const-string v1, "To prevent running in an insecure environment"
    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V
    const-string v1, "To make the app run faster"
    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V
    const-string v1, "To enable dark mode automatically"
    invoke-virtual {v5, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V
    const-string v1, "To allow background updates"
    invoke-virtual {v6, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V
    const/4 v1, 0x1
    iput v1, p0, Lcom/horoqih/app/QuizDialogFragment;->correctOptionIndex:I
    goto :goto_listeners
    
    :cond_q5
    const/4 v7, 0x5
    if-ne v1, v7, :cond_q6
    const-string v1, "How can a 'Replay Attack' be prevented in network requests?"
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const-string v1, "Using unique nonces or timestamps"
    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V
    const-string v1, "Using a very long password"
    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V
    const-string v1, "Disabling the device camera"
    invoke-virtual {v5, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V
    const-string v1, "Running the app in airplane mode"
    invoke-virtual {v6, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V
    const/4 v1, 0x1
    iput v1, p0, Lcom/horoqih/app/QuizDialogFragment;->correctOptionIndex:I
    goto :goto_listeners
    
    :cond_q6
    const/4 v7, 0x6
    if-ne v1, v7, :cond_q7
    const-string v1, "Why is 'android:allowBackup=true' considered a security risk?"
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const-string v1, "User data can be extracted via ADB backup"
    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V
    const-string v1, "It prevents the app from being uninstalled"
    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V
    const-string v1, "It allows anyone to call the user"
    invoke-virtual {v5, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V
    const-string v1, "It forces the app to show ads"
    invoke-virtual {v6, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V
    const/4 v1, 0x1
    iput v1, p0, Lcom/horoqih/app/QuizDialogFragment;->correctOptionIndex:I
    goto :goto_listeners
    
    :cond_q7
    const-string v1, "In a secure app, where should price and balance validation occur?"
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const-string v1, "On the Client-side (App)"
    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V
    const-string v1, "On the UI level"
    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V
    const-string v1, "On the Server-side (Backend)"
    invoke-virtual {v5, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V
    const-string v1, "In the SharedPrefs"
    invoke-virtual {v6, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V
    const/4 v1, 0x3
    iput v1, p0, Lcom/horoqih/app/QuizDialogFragment;->correctOptionIndex:I

    :goto_listeners
    sget v1, Lcom/horoqih/app/R$id;->quizSubmit:I
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v1
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    
    sget v1, Lcom/horoqih/app/R$id;->quizClose:I
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v1
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    invoke-virtual {p1}, Landroid/view/View;->getId()I
    move-result v0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getContext()Landroid/content/Context;
    move-result-object v1

    sget v2, Lcom/horoqih/app/R$id;->quizClose:I
    if-ne v0, v2, :cond_close
    invoke-static {v1}, Lcom/horoqih/app/QuizManager;->snoozeQuiz(Landroid/content/Context;)V
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V
    return-void

    :cond_close
    sget v2, Lcom/horoqih/app/R$id;->quizSubmit:I
    if-ne v0, v2, :cond_done
    const/4 v0, 0x0
    iget v2, p0, Lcom/horoqih/app/QuizDialogFragment;->correctOptionIndex:I
    const/4 v3, 0x1
    if-ne v2, v3, :cond_check_2
    sget v2, Lcom/horoqih/app/R$id;->quizOption1:I
    goto :goto_verify
    :cond_check_2
    iget v2, p0, Lcom/horoqih/app/QuizDialogFragment;->correctOptionIndex:I
    const/4 v3, 0x2
    if-ne v2, v3, :cond_check_3
    sget v2, Lcom/horoqih/app/R$id;->quizOption2:I
    goto :goto_verify
    :cond_check_3
    iget v2, p0, Lcom/horoqih/app/QuizDialogFragment;->correctOptionIndex:I
    const/4 v3, 0x3
    if-ne v2, v3, :cond_check_4
    sget v2, Lcom/horoqih/app/R$id;->quizOption3:I
    goto :goto_verify
    :cond_check_4
    sget v2, Lcom/horoqih/app/R$id;->quizOption4:I

    :goto_verify
    iget-object v3, p0, Lcom/horoqih/app/QuizDialogFragment;->root:Landroid/view/View;
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v2
    check-cast v2, Landroid/widget/RadioButton;
    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z
    move-result v2
    if-eqz v2, :cond_wrong

    const-string v0, "Correct! Flag Unlocked."
    const/4 v2, 0x0
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    invoke-static {v1}, Lcom/horoqih/app/QuizManager;->handleCorrectAnswer(Landroid/content/Context;)V
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Passive Quiz Q"
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v2, p0, Lcom/horoqih/app/QuizDialogFragment;->currentQuestionIndex:I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v1, v0}, Lcom/horoqih/app/CtfManager;->addPassiveScore(Landroid/content/Context;Ljava/lang/String;)V
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V
    return-void

    :cond_wrong
    const-string v0, "Wrong! Come back in 1 hour."
    const/4 v2, 0x1
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    invoke-static {v1}, Lcom/horoqih/app/QuizManager;->handleWrongAnswer(Landroid/content/Context;)V
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_done
    return-void
.end method