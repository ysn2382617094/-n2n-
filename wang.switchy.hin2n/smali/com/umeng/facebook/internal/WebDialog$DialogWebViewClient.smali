.class Lcom/umeng/facebook/internal/WebDialog$DialogWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/internal/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/facebook/internal/WebDialog;


# direct methods
.method private constructor <init>(Lcom/umeng/facebook/internal/WebDialog;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/umeng/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/umeng/facebook/internal/WebDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/facebook/internal/WebDialog;Lcom/umeng/facebook/internal/WebDialog$1;)V
    .locals 0

    .line 483
    invoke-direct {p0, p1}, Lcom/umeng/facebook/internal/WebDialog$DialogWebViewClient;-><init>(Lcom/umeng/facebook/internal/WebDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 569
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 570
    iget-object p1, p0, Lcom/umeng/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/umeng/facebook/internal/WebDialog;

    invoke-static {p1}, Lcom/umeng/facebook/internal/WebDialog;->access$200(Lcom/umeng/facebook/internal/WebDialog;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 571
    iget-object p1, p0, Lcom/umeng/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/umeng/facebook/internal/WebDialog;

    invoke-static {p1}, Lcom/umeng/facebook/internal/WebDialog;->access$300(Lcom/umeng/facebook/internal/WebDialog;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 577
    :cond_0
    iget-object p1, p0, Lcom/umeng/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/umeng/facebook/internal/WebDialog;

    invoke-static {p1}, Lcom/umeng/facebook/internal/WebDialog;->access$400(Lcom/umeng/facebook/internal/WebDialog;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 578
    iget-object p1, p0, Lcom/umeng/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/umeng/facebook/internal/WebDialog;

    invoke-static {p1}, Lcom/umeng/facebook/internal/WebDialog;->access$500(Lcom/umeng/facebook/internal/WebDialog;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 579
    iget-object p1, p0, Lcom/umeng/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/umeng/facebook/internal/WebDialog;

    invoke-static {p1}, Lcom/umeng/facebook/internal/WebDialog;->access$600(Lcom/umeng/facebook/internal/WebDialog;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 580
    iget-object p1, p0, Lcom/umeng/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/umeng/facebook/internal/WebDialog;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/umeng/facebook/internal/WebDialog;->access$702(Lcom/umeng/facebook/internal/WebDialog;Z)Z

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 561
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 562
    iget-object p1, p0, Lcom/umeng/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/umeng/facebook/internal/WebDialog;

    invoke-static {p1}, Lcom/umeng/facebook/internal/WebDialog;->access$200(Lcom/umeng/facebook/internal/WebDialog;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 563
    iget-object p1, p0, Lcom/umeng/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/umeng/facebook/internal/WebDialog;

    invoke-static {p1}, Lcom/umeng/facebook/internal/WebDialog;->access$300(Lcom/umeng/facebook/internal/WebDialog;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 543
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object p1, p0, Lcom/umeng/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/umeng/facebook/internal/WebDialog;

    new-instance v0, Lcom/umeng/facebook/FacebookDialogException;

    invoke-direct {v0, p3, p2, p4}, Lcom/umeng/facebook/FacebookDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/umeng/facebook/internal/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 552
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 554
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 555
    iget-object p1, p0, Lcom/umeng/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/umeng/facebook/internal/WebDialog;

    new-instance p2, Lcom/umeng/facebook/FacebookDialogException;

    const/4 p3, 0x0

    const/16 v0, -0xb

    invoke-direct {p2, p3, v0, p3}, Lcom/umeng/facebook/FacebookDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/umeng/facebook/internal/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    .line 486
    iget-object p1, p0, Lcom/umeng/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/umeng/facebook/internal/WebDialog;

    invoke-static {p1}, Lcom/umeng/facebook/internal/WebDialog;->access$100(Lcom/umeng/facebook/internal/WebDialog;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_8

    .line 487
    iget-object p1, p0, Lcom/umeng/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/umeng/facebook/internal/WebDialog;

    invoke-virtual {p1, p2}, Lcom/umeng/facebook/internal/WebDialog;->parseResponseUri(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "error"

    .line 489
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "error_type"

    .line 491
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const-string v1, "error_msg"

    .line 494
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "error_message"

    .line 496
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    const-string v1, "error_description"

    .line 499
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string v2, "error_code"

    .line 501
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 503
    invoke-static {v2}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_3

    .line 505
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_3
    const/4 v2, -0x1

    .line 511
    :goto_0
    invoke-static {p2}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 512
    invoke-static {v1}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-ne v2, v4, :cond_4

    .line 513
    iget-object p2, p0, Lcom/umeng/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/umeng/facebook/internal/WebDialog;

    invoke-virtual {p2, p1}, Lcom/umeng/facebook/internal/WebDialog;->sendSuccessToListener(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_6

    const-string p1, "access_denied"

    .line 514
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "OAuthAccessDeniedException"

    .line 515
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 516
    :cond_5
    iget-object p1, p0, Lcom/umeng/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/umeng/facebook/internal/WebDialog;

    invoke-virtual {p1}, Lcom/umeng/facebook/internal/WebDialog;->cancel()V

    goto :goto_1

    :cond_6
    const/16 p1, 0x1069

    if-ne v2, p1, :cond_7

    .line 518
    iget-object p1, p0, Lcom/umeng/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/umeng/facebook/internal/WebDialog;

    invoke-virtual {p1}, Lcom/umeng/facebook/internal/WebDialog;->cancel()V

    goto :goto_1

    .line 520
    :cond_7
    new-instance p1, Lcom/umeng/facebook/FacebookRequestError;

    invoke-direct {p1, v2, p2, v1}, Lcom/umeng/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object p2, p0, Lcom/umeng/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/umeng/facebook/internal/WebDialog;

    new-instance v2, Lcom/umeng/facebook/FacebookServiceException;

    invoke-direct {v2, p1, v1}, Lcom/umeng/facebook/FacebookServiceException;-><init>(Lcom/umeng/facebook/FacebookRequestError;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/umeng/facebook/internal/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    :goto_1
    return v0

    :cond_8
    const-string p1, "fbconnect://cancel"

    .line 524
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 525
    iget-object p1, p0, Lcom/umeng/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/umeng/facebook/internal/WebDialog;

    invoke-virtual {p1}, Lcom/umeng/facebook/internal/WebDialog;->cancel()V

    return v0

    :cond_9
    const-string p1, "touch"

    .line 527
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    return v1

    .line 532
    :cond_a
    :try_start_1
    iget-object p1, p0, Lcom/umeng/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/umeng/facebook/internal/WebDialog;

    invoke-virtual {p1}, Lcom/umeng/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    .line 533
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v2, v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 532
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_1
    return v1
.end method
