.class public Landroid/location/ZTEPrivacyLocationManager;
.super Landroid/location/LocationManager;
.source "ZTEPrivacyLocationManager.java"


# static fields
.field private static final ACCESS_COARSE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_COARSE_LOCATION"

.field private static final ACCESS_FINE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_FINE_LOCATION"

.field private static final TAG:Ljava/lang/String; = "ZTEPrivacyLocationManager"

.field private static sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-object v0, Landroid/location/ZTEPrivacyLocationManager;->sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;

    return-void
.end method

.method public constructor <init>(Landroid/location/ILocationManager;Landroid/content/Context;)V
    .locals 0
    .parameter "service"
    .parameter "context"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/location/LocationManager;-><init>(Landroid/location/ILocationManager;)V

    .line 73
    iput-object p2, p0, Landroid/location/ZTEPrivacyLocationManager;->context:Landroid/content/Context;

    .line 74
    return-void
.end method

.method private checkPermissionsSafe()Z
    .locals 4

    .prologue
    .line 78
    iget-object v2, p0, Landroid/location/ZTEPrivacyLocationManager;->context:Landroid/content/Context;

    const-string/jumbo v3, "privacy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/privacy/ZTEPrivacyManager;

    .line 79
    .local v0, sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 81
    .local v1, uid:I
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v2, v1}, Lcom/zte/privacy/ZTEPrivacyManager;->checkCallingPermission(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v2, v1}, Lcom/zte/privacy/ZTEPrivacyManager;->checkCallingPermission(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    :cond_0
    const/4 v2, 0x0

    .line 88
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isSecurityEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    iget-object v3, p0, Landroid/location/ZTEPrivacyLocationManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "security_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 94
    .local v0, enabled:I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 287
    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->checkPermissionsSafe()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    const/4 v0, 0x0

    .line 291
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    move-result v0

    goto :goto_0
.end method

.method public addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 297
    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->checkPermissionsSafe()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    const/4 v0, 0x0

    .line 300
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z

    move-result v0

    goto :goto_0
.end method

.method public addProximityAlert(DDFJLandroid/app/PendingIntent;)V
    .locals 1
    .parameter "latitude"
    .parameter "longitude"
    .parameter "radius"
    .parameter "expiration"
    .parameter "intent"

    .prologue
    .line 244
    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->checkPermissionsSafe()Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-super/range {p0 .. p8}, Landroid/location/LocationManager;->addProximityAlert(DDFJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 1
    .parameter "provider"

    .prologue
    .line 274
    if-nez p1, :cond_0

    .line 275
    invoke-super {p0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 281
    :goto_0
    return-object v0

    .line 277
    :cond_0
    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->checkPermissionsSafe()Z

    move-result v0

    if-nez v0, :cond_1

    .line 278
    const/4 v0, 0x0

    goto :goto_0

    .line 281
    :cond_1
    invoke-super {p0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_0
.end method

.method public getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;
    .locals 1
    .parameter "name"

    .prologue
    .line 263
    if-nez p1, :cond_0

    .line 264
    invoke-super {p0, p1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    .line 270
    :goto_0
    return-object v0

    .line 266
    :cond_0
    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->checkPermissionsSafe()Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    const/4 v0, 0x0

    goto :goto_0

    .line 270
    :cond_1
    invoke-super {p0, p1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    goto :goto_0
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "provider"

    .prologue
    .line 254
    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->checkPermissionsSafe()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x0

    .line 258
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public requestLocationUpdates(JFLandroid/location/Criteria;Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "criteria"
    .parameter "intent"

    .prologue
    .line 170
    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->isSecurityEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 171
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/location/LocationManager;->requestLocationUpdates(JFLandroid/location/Criteria;Landroid/app/PendingIntent;)V

    .line 191
    :cond_1
    :goto_0
    return-void

    .line 186
    :cond_2
    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->checkPermissionsSafe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    invoke-super/range {p0 .. p5}, Landroid/location/LocationManager;->requestLocationUpdates(JFLandroid/location/Criteria;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 1
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "criteria"
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 132
    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->isSecurityEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 133
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/location/LocationManager;->requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 152
    :cond_1
    :goto_0
    return-void

    .line 147
    :cond_2
    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->checkPermissionsSafe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-super/range {p0 .. p6}, Landroid/location/LocationManager;->requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V
    .locals 1
    .parameter "provider"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "intent"

    .prologue
    .line 157
    if-eqz p1, :cond_0

    if-eqz p5, :cond_0

    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->isSecurityEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 158
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    .line 167
    :cond_1
    :goto_0
    return-void

    .line 162
    :cond_2
    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->checkPermissionsSafe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    invoke-super/range {p0 .. p5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    .locals 1
    .parameter "provider"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "listener"

    .prologue
    .line 100
    if-eqz p1, :cond_0

    if-eqz p5, :cond_0

    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->isSecurityEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 109
    :cond_1
    :goto_0
    return-void

    .line 105
    :cond_2
    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->checkPermissionsSafe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-super/range {p0 .. p5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 1
    .parameter "provider"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 115
    if-eqz p1, :cond_0

    if-eqz p5, :cond_0

    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->isSecurityEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 116
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 125
    :cond_1
    :goto_0
    return-void

    .line 120
    :cond_2
    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->checkPermissionsSafe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-super/range {p0 .. p6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0
.end method

.method public requestSingleUpdate(Landroid/location/Criteria;Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "criteria"
    .parameter "intent"

    .prologue
    .line 228
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->isSecurityEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 229
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/location/LocationManager;->requestSingleUpdate(Landroid/location/Criteria;Landroid/app/PendingIntent;)V

    .line 238
    :cond_1
    :goto_0
    return-void

    .line 233
    :cond_2
    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->checkPermissionsSafe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    invoke-super {p0, p1, p2}, Landroid/location/LocationManager;->requestSingleUpdate(Landroid/location/Criteria;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public requestSingleUpdate(Landroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 1
    .parameter "criteria"
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 205
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->isSecurityEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 206
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/location/LocationManager;->requestSingleUpdate(Landroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 213
    :cond_1
    :goto_0
    return-void

    .line 209
    :cond_2
    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->checkPermissionsSafe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    invoke-super {p0, p1, p2, p3}, Landroid/location/LocationManager;->requestSingleUpdate(Landroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0
.end method

.method public requestSingleUpdate(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "provider"
    .parameter "intent"

    .prologue
    .line 216
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->isSecurityEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 217
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 225
    :cond_1
    :goto_0
    return-void

    .line 221
    :cond_2
    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->checkPermissionsSafe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    invoke-super {p0, p1, p2}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 1
    .parameter "provider"
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 194
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->isSecurityEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 195
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 202
    :cond_1
    :goto_0
    return-void

    .line 198
    :cond_2
    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->checkPermissionsSafe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    invoke-super {p0, p1, p2, p3}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0
.end method
