
    sput-object v7, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    goto :goto_cb

    .line 161
    :cond_b5
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string v8, "SEC_FLOATING_FEATURE_SYSTEM_CONFIG_SIOP_POLICY_FILENAME"

    invoke-virtual {v6, v8, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    .line 163
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cb

    .line 164
    const-string v6, "siop_r8q_sm8250"

    sput-object v6, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    .line 168
    :cond_cb
    :goto_cb
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/system/heavyuser.disable"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .local v6, "file2":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_dc

    if-eqz v0, :cond_dc

    move v0, v1

    goto :goto_dd

    :cond_dc
    move v0, v2

    :goto_dd
    sput-boolean v0, Lcom/android/server/ssrm/Feature;->DISABLE_HEAVYUSER:Z

    .line 171
    const-string v0, "dvfs_policy_sdm8250_xx"

    sput-object v0, Lcom/android/server/ssrm/Feature;->DVFS_FILENAME:Ljava/lang/String;

    .line 173
    sget-object v7, Lcom/android/server/ssrm/Feature;->DVFS_FILENAME_DEFAULT:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/Feature;->DVFS_FILENAME:Ljava/lang/String;

    .line 175
    const-string v0, "jdm"

    const-string v7, "in_house"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->VENDOR_JDM:Z
